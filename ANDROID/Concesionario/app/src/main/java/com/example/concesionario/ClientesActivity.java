package com.example.concesionario;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;

public class ClientesActivity extends AppCompatActivity {

    EditText jetnombre,jetusuario,jetclave,jetciudad;
    Button  jbtconsultar,jbtadicionar,jbtmodificar,jbteliminar,jbtregresar,jbtcancelar;
    MainSQLiteOPenHelper  Admin=new MainSQLiteOPenHelper(this,"empresa.db",null,1);

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_clientes);

        jetnombre=findViewById(R.id.etnombre);
        jetusuario=findViewById(R.id.etusuario);
        jetclave=findViewById(R.id.etclave);
        jetciudad=findViewById(R.id.etciudad);

        jbtconsultar=findViewById(R.id.btconsultar);
        jbtadicionar=findViewById(R.id.btadicionar);
        jbtmodificar=findViewById(R.id.btmodificar);
        jbteliminar=findViewById(R.id.bteliminar);
        jbtregresar=findViewById(R.id.btregresar);
        jbtcancelar=findViewById(R.id.btcancelar);
    }

    public void consultar (View v){
        SQLiteDatabase db=Admin.getReadableDatabase();
        String nom_con;
        nom_con=jetnombre.getText().toString();
        if (nom_con.isEmpty())
        {
            Toast.makeText(this,"El nombre es requerido para consultar",Toast.LENGTH_LONG).show();
            jetnombre.requestFocus();
        }
        else
        {
            Cursor fila=db.rawQuery("select * from cliente where nombre='" + nom_con + "'",null);
            if (fila.moveToFirst())
            {
                jetusuario.setText(fila.getString(1));
                jetclave.setText(fila.getString(2));
                jetciudad.setText(fila.getString(3));
            }
            else
            {
                Toast.makeText(this,"El cliente no esta registrado",Toast.LENGTH_LONG).show();
            }
            db.close();
        }
    }

    public void adicionar(View v){
        SQLiteDatabase db=Admin.getWritableDatabase();
        String nombre,usuario,clave,ciudad;
        nombre=jetnombre.getText().toString();
        usuario=jetusuario.getText().toString();
        clave=jetclave.getText().toString();
        ciudad=jetciudad.getText().toString();
        if (nombre.isEmpty() || usuario.isEmpty() || clave.isEmpty() || ciudad.isEmpty()){
            Toast.makeText(this,"Todos los datos son obligatorios",Toast.LENGTH_LONG).show();
            jetnombre.requestFocus();
        }
        else{
            ContentValues dato=new ContentValues();
            dato.put("nombre",nombre);
            dato.put("usuario",usuario);
            dato.put("clave",clave);
            dato.put("ciudad",ciudad);
            long resp=db.insert("cliente",null,dato);
            if (resp > 0){
                Toast.makeText(this,"Registro guardado",Toast.LENGTH_LONG).show();
                limpiar_campos();
            }
            else{
                Toast.makeText(this,"Error guardando registro",Toast.LENGTH_LONG).show();
            }
        }
        db.close();
    }

    public void modificar(View v){
        SQLiteDatabase db=Admin.getWritableDatabase();
        String nombre,usuario,clave,ciudad;
        nombre=jetnombre.getText().toString();
        usuario=jetusuario.getText().toString();
        clave=jetclave.getText().toString();
        ciudad=jetciudad.getText().toString();
        if (nombre.isEmpty() || usuario.isEmpty() || clave.isEmpty() || ciudad.isEmpty()){
            Toast.makeText(this,"Todos los datos son obligatorios",Toast.LENGTH_LONG).show();
            jetnombre.requestFocus();
        }
        else{
            ContentValues dato=new ContentValues();
            dato.put("nombre",nombre);
            dato.put("usuario",usuario);
            dato.put("clave",clave);
            dato.put("ciudad",ciudad);
            long resp=db.update ("cliente",dato,"nombre='" + nombre + "'",null);
            if (resp > 0)
            {
                Toast.makeText(this,"Registro guardado",Toast.LENGTH_LONG).show();
                limpiar_campos();
            }
            else
            {
                Toast.makeText(this,"Error guardando registro",Toast.LENGTH_LONG).show();
            }
        }
        db.close();
    }

    public void eliminar(View v){
        SQLiteDatabase db=Admin.getWritableDatabase();
        String nombre;
        nombre=jetnombre.getText().toString();
        if (nombre.isEmpty()){
            Toast.makeText(this,"El nombre es obligatorio",Toast.LENGTH_LONG).show();
            jetnombre.requestFocus();
        }
        else{
            ContentValues dato=new ContentValues();
            dato.put("nombre",nombre);
            long resp=db.delete("cliente","nombre='" + nombre + "'",null);
            if (resp > 0)
            {
                Toast.makeText(this,"Registro eliminado",Toast.LENGTH_LONG).show();
                limpiar_campos();
            }
            else
            {
                Toast.makeText(this,"Error eliminando registro",Toast.LENGTH_LONG).show();
            }
        }
        db.close();
    }

    public void limpiar_campos(){
        jetnombre.setText("");
        jetusuario.setText("");
        jetclave.setText("");
        jetciudad.setText("");
        jetnombre.requestFocus();
    }

    public void cancelar(View v)
    {
        limpiar_campos();
    }


    public void regresar(View v){
        Intent IntMain=new Intent(this,MainActivity.class);
        startActivity(IntMain);
    }
}
