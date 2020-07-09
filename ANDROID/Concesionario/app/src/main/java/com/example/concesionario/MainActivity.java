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

public class MainActivity extends AppCompatActivity {
    EditText etuser, etpass;
    Button jbtregrear,jbtautos;
    private String usuario;
    MainSQLiteOPenHelper  Admin=new MainSQLiteOPenHelper(this,"empresa.db",null,1);

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        //Asociar los objetos XML con los Java
        etuser= findViewById(R.id.etusuario);
        etpass= findViewById(R.id.etclave);

        jbtregrear=findViewById(R.id.btregresar);
        jbtautos=findViewById(R.id.btauto);
    }

    public void ventas(View v){ //ingresar
        usuario= etuser.getText().toString();
        String contra= etpass.getText().toString();
        if (usuario.isEmpty() || contra.isEmpty()){
            Toast.makeText(this, "Ingrese usuario y contraseña.", Toast.LENGTH_LONG).show();
            etuser.requestFocus();
        }
        else{
            if (consultar(usuario, contra)){
                Intent IntVentas=new Intent(this, VentasActivity.class);
                IntVentas.putExtra("getUsuario", usuario);
                startActivity(IntVentas);
            }
            else{
                Toast.makeText(this, "Usuario o contraseña inválidos.", Toast.LENGTH_LONG).show();
                etuser.requestFocus();
            }
        }
    }

    public void clientes(View v){// registrarse
        Intent IntClientes=new Intent(this, ClientesActivity.class);
        startActivity(IntClientes);
    }

    public void autos(View v){ //registrar auto
        Intent IntAutos=new Intent(this, AutosActivity.class);
        startActivity(IntAutos);
    }

    //consultar usuario
    public boolean consultar(String usuario, String clave){
        SQLiteDatabase db= Admin.getReadableDatabase();
        Cursor fila=db.rawQuery("select * from cliente where usuario='"+usuario+"' and clave='"+clave+"'", null);
        if (fila.moveToFirst()){
            return true;
        }
        else{
            Toast.makeText(this, "Registro no existe.", Toast.LENGTH_LONG).show();
            return false;
        }
    }
}
