using System.Collections;
using System.Collections.Generic;
using UnityEngine;


[System.Serializable]
public class Dialogs
{
    public string name;
    public GameObject objectDialog;
}


public class DialogManager : MonoBehaviour
{


    public GameObject dialogPanel;
    public GameObject dialogPanelImage;

    [SerializeField]
    public Dialogs[] dialogs;


    static bool collectible = false;

    Dictionary<GameObject, string> dialogMap = new Dictionary<GameObject, string>();

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < dialogs.Length; i++)
        {
            dialogMap.Add(dialogs[i].objectDialog, dialogs[i].name);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnTriggerEnter2D(Collider2D collision)
    {

            if (dialogMap.ContainsKey(collision.gameObject))
            {
                //if (!Script.sceneMap.ContainsKey(collision.gameObject.name))
                //{
                dialogPanel.SetActive(true);
                dialogPanelImage.SetActive(true);

                collision.gameObject.GetComponent<BoxCollider2D>().enabled = false;

                Script.sceneNames = dialogMap[collision.gameObject];

                //Script.sceneMap.Add(collision.gameObject.name, 0);

                Script teste = dialogPanel.GetComponent<Script>();
                teste.Start();

                //Script.sceneNames = "";

                //}



            }

            if (dialogMap.ContainsKey(collision.gameObject)) { 
                if (dialogMap[collision.gameObject] == "objeto_colecionavel")
                {
                    GameManagementScript.numberColectables++;
                }
            }



    }

}
