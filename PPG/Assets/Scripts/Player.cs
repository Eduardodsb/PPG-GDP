using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Cinemachine;

public class Player : MonoBehaviour
{

    GameObject cam;
    string name = "";

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    private void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("Cam"))
        {

            if (cam != null)
            {
                //Desativar Câmera atual/velha
                cam.GetComponent<CinemachineVirtualCamera>().m_Priority = 0;
            }

            cam = GameObject.Find("CMv" + collision.name); //Obtém o nome da nova câmera
            cam.GetComponent<CinemachineVirtualCamera>().m_Priority = 1; //Ativa a nova câmera
        }
  
    }


    public void SavePlayer()
    {
        SaveSystem.SavePlayer(this, name);
    }


    public void LoadPlayer()
    {
        Save data = SaveSystem.LoadPlayer();
        /*
        Vector3 position;
        position.x = data.position[0];
        position.y = data.position[1];
        position.z = data.position[2];
        transform.position = position;*/
    }

}
