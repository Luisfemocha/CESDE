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
import android.widget.TextView;
import android.widget.Toast;

public class VentasActivity extends AppCompatActivity {
    TextView tusuario;
    EditText tplaca, tmodelo, tmarca, tcolor, tvalor;
    Button bcomprar, bregres;
    MainSQLiteOPenHelper Admin= new MainSQLiteOPenHelper(this, "empresa.db", null, 1);
    String usuario;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ventas);

        tusuario= findViewById(R.id.etusuario);
        tplaca= findViewById(R.id.etplaca);
        tmodelo= findViewById(R.id.etmodelo);
        tmarca= findViewById(R.id.etmarca);
        tcolor= findViewById(R.id.etcolor);
        tvalor= findViewById(R.id.etvalor);

        bcomprar= findViewById(R.id.btcomprar);
        bregres= findViewById(R.id.btregresar);

        if (savedInstanceState == null) {
            Bundle extras = getIntent().getExtras();
            if(extras == null) {
                usuario= "error";
            } else {
                usuario= extras.getString("getUsuario");
                Toast.makeText(this, "1ra opcion.", Toast.LENGTH_LONG).show();
            }
        } else {
            usuario= (String) savedInstanceState.getSerializable("getUsuario");
            Toast.makeText(this, "2da opcion.", Toast.LENGTH_LONG).show();
        }
        tusuario.setText(usuario);
    }

    public void limpiar(){
        tplaca.setText(null);
        tmodelo.setText(null);
        tmarca.setText(null);
        tcolor.setText(null);
        tvalor.setText(null);
        tusuario.requestFocus();
    }
    public void consulta(View v){
        SQLiteDatabase db= Admin.getReadableDatabase();
        String placa= tplaca.getText().toString();

        if (placa.isEmpty()){
            Toast.makeText(this, "Se requiere una placa.", Toast.LENGTH_LONG).show();
            tplaca.requestFocus();
        }
        else{
            Cursor fila=db.rawQuery("select * from auto where placa='"+placa+"'", null);
            if (fila.moveToFirst()){
                tmodelo.setText(fila.getString(1));
                tmarca.setText(fila.getString(2));
                tvalor.setText(fila.getString(3));
            }
            else{
                Toast.makeText(this, "Registro no existe.", Toast.LENGTH_LONG).show();
            }
        }
    }

    public void comprar(View v){
        String placa= tplaca.getText().toString();

        if (placa.isEmpty()){
            Toast.makeText(this, "Por favor digite una placa.", Toast.LENGTH_LONG).show();
            tusuario.requestFocus();
        }
        else {
            consulta(v);
            SQLiteDatabase db= Admin.getWritableDatabase();
            String modelo= tmodelo.getText().toString();
            String marca= tmarca.getText().toString();
            String color= tcolor.getText().toString();
            int valor= Integer.parseInt(tvalor.getText().toString());
            if (modelo.isEmpty() || marca.isEmpty() || color.isEmpty() || valor==0) {
                Toast.makeText(this, "Registro no existe.", Toast.LENGTH_LONG).show();
                return;
            }
            ContentValues dato=new ContentValues();
            dato.put("usuario", usuario);
            dato.put("placa",placa);
            dato.put("modelo",modelo);
            dato.put("marca",marca);
            dato.put("color", color);
            dato.put("valor",valor);
            long resp=db.insert("venta",null,dato);
            if (resp > 0){
                Toast.makeText(this,"Registro guardado",Toast.LENGTH_LONG).show();
                limpiar();
            }
            else{
                Toast.makeText(this,"Error guardando registro",Toast.LENGTH_LONG).show();
            }
            db.close();
        }
    }

    public void regresar(View v){
        Intent IntMain=new Intent(this,MainActivity.class);
        startActivity(IntMain);
    }
}
