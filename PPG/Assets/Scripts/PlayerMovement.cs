using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class PlayerMovement : MonoBehaviour {


    GameObject cam;
    GameObject oldCam = null;

    // Start is called before the first frame update
    void Start(){
        
    }

    // Update is called once per frame
    void Update(){
        
    }


    private void OnTriggerEnter2D(Collider2D collision){
        if (collision.CompareTag("Cam")){

            if (cam != null){
                //Desativar Câmera atual/velha
                cam.GetComponent<CinemachineVirtualCamera>().m_Priority = 0;
            }

            cam = GameObject.Find("CMv" + collision.name); //Obtém o nome da nova câmera
            cam.GetComponent<CinemachineVirtualCamera>().m_Priority = 1; //Ativa a nova câmera
        }

    }

}
