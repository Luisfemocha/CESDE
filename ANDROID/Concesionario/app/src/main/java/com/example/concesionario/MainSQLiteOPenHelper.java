package com.example.concesionario;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.annotation.Nullable;

public class MainSQLiteOPenHelper extends SQLiteOpenHelper {
    public MainSQLiteOPenHelper(@Nullable Context context, @Nullable String name, @Nullable SQLiteDatabase.CursorFactory factory, int version) {
        super(context, name, factory, version);
    }

    @Override
    public void onCreate(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE cliente(nombre text primary key,usuario text,clave text,ciudad text)");
        db.execSQL("CREATE TABLE auto(placa text primary key,modelo text,marca text,valor number)");
        db.execSQL("CREATE TABLE venta(usuario text primary key,placa text,modelo text,marca text, color text, valor number)");
    }

    @Override
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        db.execSQL("DROP TABLE cliente");
        onCreate(db);
    }
}
