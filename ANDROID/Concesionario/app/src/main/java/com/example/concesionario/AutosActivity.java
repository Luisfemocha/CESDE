package com.example.concesionario;

import androidx.appcompat.app.AppCompatActivity;

import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.database.sqlite.SQLiteDatabase;
import android.widget.Toast;

import java.sql.SQLClientInfoException;

public class AutosActivity extends AppCompatActivity {
    EditText eplaca, emodelo, emarca, evalor;
    Button bcons, badic, bmodi, belim, bregr, bcanc;
    MainSQLiteOPenHelper Admin= new MainSQLiteOPenHelper(this, "empresa.db", null, 1);

    @Override
    protected void onCreate(Bundle savedInstanceState){
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_autos);

        eplaca= findViewById(R.id.etplaca);
        emodelo= findViewById(R.id.etmodelo);
        emarca= findViewById(R.id.etmarca);
        evalor= findViewById(R.id.etvalor);

        bcons= findViewById(R.id.btconsultar);
        badic= findViewById(R.id.btadicionar);
        bmodi= findViewById(R.id.btmodificar);
        belim= findViewById(R.id.bteliminar);
        bregr= findViewById(R.id.btregresar);
        bcanc= findViewById(R.id.btcancelar);
    }

    public void limpiar(){
        eplaca.setText(null);
        emodelo.setText(null);
        emarca.setText(null);
        evalor.setText(null);
        eplaca.requestFocus();
    }

    public void consultar(View v){
        SQLiteDatabase db= Admin.getReadableDatabase();
        String placa= eplaca.getText().toString();
        if (placa.isEmpty()){
            Toast.makeText(this, "Se requiere una placa.", Toast.LENGTH_LONG).show();
            eplaca.requestFocus();
        }
        else{
            Cursor fila=db.rawQuery("select * from auto where placa='"+placa+"'", null);
            if (fila.moveToFirst()){
                emodelo.setText(fila.getString(1));
                emarca.setText(fila.getString(2));
                evalor.setText(fila.getString(3));
            }
            else{
                Toast.makeText(this, "Registro no existe.", Toast.LENGTH_LONG).show();
            }
        }
    }

    public void adicionar(View v){
        SQLiteDatabase db= Admin.getWritableDatabase();
        String placa= eplaca.getText().toString();
        String modelo= emodelo.getText().toString();
        String marca= emarca.getText().toString();
        int valor= Integer.parseInt(evalor.getText().toString());

        if (placa.isEmpty() || modelo.isEmpty() || marca.isEmpty() || valor==0){
            Toast.makeText(this, "Por favor llene todos los datos.", Toast.LENGTH_LONG).show();
            eplaca.requestFocus();
        }
        else {
            //Cursor crear = db.rawQuery("insert into auto values('" + placa + "', '"+modelo+"', '"+marca+"', '"+valor+"')", null);
            ContentValues dato=new ContentValues();
            dato.put("placa",placa);
            dato.put("modelo",modelo);
            dato.put("marca",marca);
            dato.put("valor",valor);
            long resp=db.insert("auto",null,dato);
            if (resp > 0){
                Toast.makeText(this,"Registro guardado",Toast.LENGTH_LONG).show();
                limpiar();
            }
            else{
                Toast.makeText(this,"Error guardando registro",Toast.LENGTH_LONG).show();
            }
        }
        db.close();
    }
    //modificar
    public void modificar(View v){
        SQLiteDatabase db=Admin.getWritableDatabase();
        String placa= eplaca.getText().toString();
        String modelo= emodelo.getText().toString();
        String marca= emarca.getText().toString();
        int valor= Integer.parseInt(evalor.getText().toString());
        if (placa.isEmpty() || modelo.isEmpty() || marca.isEmpty() || valor==0){
            Toast.makeText(this,"Todos los datos son obligatorios",Toast.LENGTH_LONG).show();
            eplaca.requestFocus();
        }
        else{
            ContentValues dato=new ContentValues();
            dato.put("placa",placa);
            dato.put("modelo",modelo);
            dato.put("marca",marca);
            dato.put("valor",valor);
            long resp=db.update ("auto",dato,"placa='" + placa + "'",null);
            if (resp > 0){
                Toast.makeText(this,"Registro actualizado",Toast.LENGTH_LONG).show();
                limpiar();
            }
            else{
                Toast.makeText(this,"Error actualizando registro",Toast.LENGTH_LONG).show();
            }
        }
        db.close();
    }

    //eliminar
    public void eliminar(View v){
        SQLiteDatabase db=Admin.getWritableDatabase();
        String placa= eplaca.getText().toString();
        if (placa.isEmpty()){
            Toast.makeText(this,"La placa es obligatoria",Toast.LENGTH_LONG).show();
            eplaca.requestFocus();
        }
        else{
            ContentValues dato=new ContentValues();
            dato.put("placa",placa);
            long resp=db.delete("auto","placa='" + placa + "'",null);
            if (resp > 0){
                Toast.makeText(this,"Registro eliminado",Toast.LENGTH_LONG).show();
                limpiar();
            }
            else{
                Toast.makeText(this,"Error eliminando registro",Toast.LENGTH_LONG).show();
            }
        }
        db.close();
    }

    public void regresar(View v){
        Intent IntMain=new Intent(this,MainActivity.class);
        startActivity(IntMain);
    }
    public void cancelar(View v){
        limpiar();
    }
}
