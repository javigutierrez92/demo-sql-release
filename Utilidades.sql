
--Busca un texto en todas las funciones y procedimientos

SELECT DISTINCT
    name,
    type
FROM
    all_source
WHERE
    upper(text) LIKE '%CL_DOMICILIO_SOLICITUD%'
ORDER BY
    type, 
    name; 


--Contest evaluacion
const BUTTON = document.getElementById("next");
const QUESTIONS = document.querySelectorAll(".pt-3");

QUESTIONS.forEach(question => {
setTimeout(()=>{
question.querySelector("li").click(); 
BUTTON.click();
},500);
}); 

--Ejemplo service now 
https://circulodecredito.service-now.com/now/sow/record/change_request/ce4b549133202610c14f0f382e5c7b8f/params/selected-tab-index/2



--- SIN IDENTIDAD ligas

	-- ABETOLIB
  		https://gestiontl-qa.circuloapps.com/evaluaciones/evaluacion/validaClave?id=6f4120fa87db25472b7a0b5d447e0480f5a9de3e

	--TEST JCP 2
   		https://gestiontl-qa.circuloapps.com/evaluaciones/evaluacion/validaClave?id=65066cc764a75e249ad43bfa84f5908466dc50c5

   		--probar esta:    https://gestiontl-qa.circuloapps.com/evaluaciones/evaluacion/validaClave?id=4ecd40a7af1f24b02982e5a60ec0c39e7f0e8dae
   		

   	--LOCAL
   		https://localhost:8080/evaluaciones/evaluacion/validaClave?id=65066cc764a75e249ad43bfa84f5908466dc50c5

   		PCCP1@MAIL.COM
		GUML920429RJ7


--- CON IDENTIDAD

	-- ABETOLIB
  		https://gestiontl-qa.circuloapps.com/evaluaciones/evaluacion/validaClave?id=dd0230f053459848bf7776b408fd7e19e5ec984c

	--TEST JCP 2
		https://gestiontl-qa.circuloapps.com/evaluaciones/evaluacion/validaClave?id=1d5b626b132889778bc212d50c62dc143c323b2b

		--probar esta:  https://gestiontl-qa.circuloapps.com/evaluaciones/evaluacion/validaClave?id=31972b5209269b8526d61238ecb048d73319cacb

   	--LOCAL
   		https://localhost:8080/evaluaciones/evaluacion/validaClave?id=1d5b626b132889778bc212d50c62dc143c323b2b 



		/*
		QUERY REVISAR CANDIDATOS CON EVALUACION 
		Y RESPUESTAS 

		 WITH CANDIDATO AS
        (
            select candidato.CVE_CANDIDATO_ID,candidato.CVE_EMPLEADOR 
            from EVSBDPRO.EVT_CANDIDATO candidato
            INNER JOIN  EVSBDPRO.evt_evaluacion_respuesta EVA_RESP ON candidato.cve_candidato_id=EVA_RESP.cve_candidato_id
            INNER JOIN   EVSBDPRO.evt_evaluacion_topico_resp EVA_TOP_RESP on candidato.cve_candidato_id=EVA_TOP_RESP.cve_candidato
           --where  
           --candidato.CVE_EMPLEADOR =   p_cve_empleador
           --AND candidato.CVE_CANDIDATO_ID=p_cve_candidato
           --and
           --rownum <2
           
        ),CORREO AS
        (
            SELECT  CVE_DOMINIO,CVE_ID FROM EVSBDPRO.EVT_CORREO_CANDIDATO CORREO
        )
        SELECT 
        to_char(add_months(avance.fec_operacion,6),'yyyy-mm-dd') fec_vigencia,
        TO_CHAR(AVANCE.FEC_OPERACION, 'YYYY-MM-DD HH24:MI:SS') AS FEC_OPERACION,
                DATO_GRAL.DES_NOMBRE || ' ' || DATO_GRAL.DES_APPATERNO || ' ' || DATO_GRAL.DES_APMATERNO NOMBRE_CANDIDATO,
                AVANCE.CVE_CANDIDATO,EVALUACION.CVE_EVALUACION,DATO_GRAL.CVE_PERFIL,AVANCE.AVANCE_PORCENTUAL
                       
        FROM 
        CORREO
        INNER JOIN EVSBDPRO.EVT_DOMINIO_CORREO DOMINIO 
            ON CORREO.CVE_DOMINIO = DOMINIO.CVE_DOMINIO 
        INNER JOIN EVSBDPRO.EVT_CANDIDATO_IDENTIFICADOR IDENTIF  
            ON IDENTIF.CVE_CORREO_CANDIDATO = CORREO.CVE_ID
        INNER JOIN EVSBDPRO.EVT_DATOS_GENERALES DATO_GRAL   
            ON DATO_GRAL.CVE_ID = IDENTIF.CVE_DATOS_GENERALES
        INNER JOIN  CANDIDATO
            ON DATO_GRAL.CVE_CANDIDATO = CANDIDATO.CVE_CANDIDATO_ID 
        INNER JOIN EVSBDPRO.EVT_EVALUACION EVALUACION 
            ON DATO_GRAL.CVE_EVALUACION = EVALUACION.CVE_EVALUACION
        INNER JOIN EVSBDPRO.EVT_EVALUACION_AVANCE AVANCE
            ON DATO_GRAL.CVE_EVALUACION = AVANCE.CVE_EVALUACION_ID  
            AND DATO_GRAL.CVE_PERFIL = AVANCE.PERFIL
            AND DATO_GRAL.CVE_CANDIDATO = AVANCE.CVE_CANDIDATO
        INNER JOIN EVSBDPRO.EVT_EVALUACION_TIEMPO EVA_TIEM ON AVANCE.CVE_ID=EVA_TIEM.CVE_AVANCE_ID
            WHERE  
            --EVALUACION.cve_evaluacion =p_cve_evaluacion
            --AND  
            AVANCE.AVANCE_PORCENTUAL != '100'
            AND ADD_MONTHS(avance.fec_operacion, 6) >= SYSDATE
            --AND ROWNUM <=1
            --AND DATO_GRAL.CVE_PERFIL=p_cve_perfil
            GROUP BY 
             to_char(add_months(avance.fec_operacion,6),
                 TO_CHAR(AVANCE.FEC_OPERACION, 'YYYY-MM-DD HH24:MI:SS'),
                DATO_GRAL.DES_NOMBRE || ' ' || DATO_GRAL.DES_APPATERNO || ' ' || DATO_GRAL.DES_APMATERNO,
                AVANCE.CVE_CANDIDATO,EVALUACION.CVE_EVALUACION,DATO_GRAL.CVE_PERFIL,AVANCE.AVANCE_PORCENTUA;
		*/


        /*
        busquedas
        select * from evt_candidato where des_correo = upper('daniel_rosales76@hotmail.com');

            select * from evt_evaluacion_avance  where cve_candidato =: idcandidato; 

            select * from  evt_clave where clave_des ='e730aeefca0402894cb6171c8cc454848538b61e4e9a2040a35d899beee8fbe5';

            select * from evt_evaluacion_respuesta where cve_candidato_id =: id;


        
        
        */