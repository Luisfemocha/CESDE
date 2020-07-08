/*paciente*/
CREATE PROCEDURE crear_paciente
@idp_c int,
@nomp_c varchar(30),
@edadp_c int,
@telp_c varchar(10)
AS
INSERT into paciente VALUES (@idp_c, @nomp_c, @edadp_c, @telp_c);

CREATE PROCEDURE borrar_paciente
@idp_c int
AS
delete from paciente where idp=@idp_c;

CREATE PROCEDURE actualizar_paciente
@idp_c1 int,
@idp_c2 int,
@nomp_c varchar(30),
@edadp_c int,
@telp_c varchar(10)
AS
update paciente set idp=@idp_c2, nomp=@nomp_c, edadp=@edadp_c, telp=@telp_c where idp=@idp_c1;

CREATE PROCEDURE leer_paciente
@idp_c int
AS
select * from paciente where idp=@idp_c;

/*EMPLEADO*/
CREATE PROCEDURE crear_empleado
@ide_c int,
@nome_c varchar(30),
@edade_c int,
@tele_c varchar(10),
@cargo_c varchar(20)
AS
INSERT into empleado VALUES (@ide_c, @nome_c, @edade_c, @tele_c, @cargo_c);

CREATE PROCEDURE borrar_empleado
@ide_c int
AS
delete from empleado where ide=@ide_c;

CREATE PROCEDURE actualizar_empleado
@ide_c1 int,
@ide_c2 int,
@nome_c varchar(30),
@edade_c int,
@tele_c varchar(10),
@cargo_c varchar(20)
AS
update empleado set ide=@ide_c2, nome=@nome_c, edade=@edade_c, tele=@tele_c, cargo=@cargo_c where ide=@ide_c1;

CREATE PROCEDURE leer_empleado
@ide_c int
AS
select * from empleado where ide=@ide_c;

/*ENFERMEDAD*/
CREATE PROCEDURE crear_enfermedad
@idenf_c int,
@nomenf_c varchar(30),
@sintenf_c varchar(200),
@cuidenf_c varchar(300),
@especs_c varchar(300)
AS
INSERT into enfermedad VALUES (@idenf_c, @nomenf_c, @sintenf_c, @cuidenf_c, @especs_c);

CREATE PROCEDURE borrar_enfermedad
@idenf_c int
AS
delete from enfermedad where idenf=@idenf_c;

CREATE PROCEDURE actualizar_enfermedad
@idenf_c1 int,
@idenf_c2 int,
@nomenf_c varchar(30),
@sintenf_c varchar(200),
@cuidenf_c varchar(300),
@especs_c varchar(300)
AS
update enfermedad set idenf=@idenf_c2, nomenf=@nomenf_c, sintenf =@sintenf_c, cuidenf =@cuidenf_c, especs =@especs_c where idenf=@idenf_c1;

CREATE PROCEDURE leer_enfermedad
@idenf_c int
AS
select * from enfermedad where idenf=@idenf_c;

/*CITA*/
CREATE PROCEDURE crear_cita
@idc_c int,
@idp1_c int,
@ide1_c int,
@fechac_c datetime,
@diagnostico_c int
AS
INSERT into cita VALUES (@idc_c, @idp1_c, @ide1_c, @fechac_c, @diagnostico_c);

CREATE PROCEDURE borrar_cita
@idc_c int
AS
delete from cita where idc=@idc_c;

CREATE PROCEDURE actualizar_cita
@idc_c1 int,
@idc_c2 int,
@idp1_c int,
@ide1_c int,
@fechac_c datetime,
@diagnostico_c int
AS
update cita set idc=@idc_c2, idp1=@idp1_c, ide1 =@ide1_c, fechac =@fechac_c, diagnostico =@diagnostico_c where idc=@idc_c1;

CREATE PROCEDURE leer_cita
@idc_c int
AS
select * from cita where idc=@idc_c;

/*VISITANTE*/
CREATE PROCEDURE crear_visitante
@idv_c int,
@nomv_c varchar(30),
@edadv_c int,
@telefono_c varchar(10)
AS
INSERT into visitante VALUES (@idv_c, @nomv_c, @edadv_c, @telefono_c);

CREATE PROCEDURE borrar_visitante
@idv_c int
AS
delete from visitante where idv=@idv_c;

CREATE PROCEDURE actualizar_visitante
@idv_c1 int,
@idv_c2 int,
@nomv_c varchar(30),
@edadv_c int,
@telefono_c varchar(10)
AS
update visitante set idv=@idv_c2, nomv=@nomv_c, edadv=@edadv_c, telefono=@telefono_c where idv=@idv_c1;

CREATE PROCEDURE leer_visitante
@idv_c int
AS
select * from visitante where idv=@idv_c;

/*VISITA*/
CREATE PROCEDURE crear_visita
@idvis_c int,
@idv1_c int,
@idp2_c int,
@fechav_c datetime
AS
INSERT into visita VALUES (@idvis_c, @idv1_c, @idp2_c, @fechav_c);

CREATE PROCEDURE borrar_visita
@idvis_c int
AS
delete from visita where idvis=@idvis_c;

CREATE PROCEDURE actualizar_visita
@idvis_c1 int,
@idvis_c2 int,
@idv1_c int,
@idp2_c int,
@fechav_c datetime
AS
update visita set idvis=@idvis_c2, idv1=@idv1_c, idp2=@idp2_c, fechav=@fechav_c where idvis=@idvis_c1;

CREATE PROCEDURE leer_visita
@idvis_c int
AS
select * from visita where idvis=@idvis_c;

/*HISTORIAL*/
CREATE PROCEDURE crear_historial
@idph_c int,
@idp3_c int,
@idenf1_c int,
@fechad_c date,
@notas_c varchar(300)
AS
INSERT into historial VALUES (@idph_c, @idp3_c, @idenf1_c, @fechad_c, @notas_c);

CREATE PROCEDURE borrar_historial
@idph_c int
AS
delete from historial where idph=@idph_c;

CREATE PROCEDURE actualizar_historial
@idph_c1 int,
@idph_c2 int,
@idp3_c int,
@idenf1_c int,
@fechad_c date,
@notas_c varchar(300)
AS
update historial set idph=@idph_c2, idp3= @idp3_c, idenf1=@idenf1_c, fechad=@fechad_c, notas=@notas_c where idph=@idph_c1;

CREATE PROCEDURE leer_historial
@idph_c int
AS
select * from historial where idph=@idph_c;

CREATE PROCEDURE buscar_historial
@idp3_c int
AS
select * from historial where idp3=@idp3_c;
