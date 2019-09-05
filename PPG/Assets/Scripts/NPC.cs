using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class NPC : MonoBehaviour
{

    public GameObject dialogPanel;
    public GameObject dialogPanelImage;

    public static bool isNPCTeleporting = false;


    int count = 0;

    Vector3 firstPosition = new Vector3(39.485f, -1.541f, 0);
    Vector3 secondPosition = new Vector3(44.17f, 11.8f, 0);
    Vector3 thirdPosition = new Vector3(25.709f, 1.814f, 0);
    //x = 48.042f ; y= 23.246f
    // Start is called before the first frame update
    void Start()
    {
        //1 x = 39.2f ; y = -1.41f
        //2 x = 44.17f ; y = 11.8f
        //3 x = 25.87f ; y = 1.85;
    }


    public void teleport()
    {
        isNPCTeleporting = true;
        //GameObject.Find("Player").GetComponent<PlayerMovement>().DisallowMovement();
        PlayerMovement.allowmovement = false;
        this.GetComponent<Animator>().SetBool("Teleportation", true);
        Invoke("changePosition", 2);
    

    }

    public void changePosition()
    {
        if (count == 0)
        {
            PlayerMovement.allowmovement = false;
            transform.position = firstPosition;
            dialogPanel.SetActive(true);
            dialogPanelImage.SetActive(true);
            isNPCTeleporting = false;
            Script.sceneNames = "kawapi_some";
            Script teste = dialogPanel.GetComponent<Script>();
            teste.Start();


            //Script.sceneMap.Add(collision.gameObject.name, 0);

        }

        else if (count == 1)
        {
            PlayerMovement.allowmovement = false;
            transform.position = secondPosition;
            dialogPanel.SetActive(true);
            dialogPanelImage.SetActive(true);
            isNPCTeleporting = false;
            Script.sceneNames = "kawapi_some_2";
            GameObject.Find("DialogManager").transform.GetChild(18).gameObject.SetActive(true);
            Script teste = dialogPanel.GetComponent<Script>();
            teste.Start();
        }

        else if (count == 2)
        {
            PlayerMovement.allowmovement = false;
            transform.position = thirdPosition;
            dialogPanel.SetActive(true);
            dialogPanelImage.SetActive(true);
            isNPCTeleporting = false;
            Script.sceneNames = "kawapi_some_3";
            GameObject.Find("DialogManager").transform.GetChild(19).gameObject.SetActive(true);
            GameObject.Find("DialogManager").transform.GetChild(20).gameObject.SetActive(true);
            Script teste = dialogPanel.GetComponent<Script>();
            teste.Start();
        }

        count++;
    }

    public void setTeleportationFalse() {
        //GameObject.Find("Player").GetComponent<PlayerMovement>().AllowMovement();
        //GameObject.Find("Player").GetComponent<PlayerMovement>().DisallowMovement();
        //PlayerMovement.allowmovement = false;
        this.GetComponent<Animator>().SetBool("Teleportation", false);
}

    // Update is called once per frame
    /*
    void Update()
    {
        
    }
    */
}
