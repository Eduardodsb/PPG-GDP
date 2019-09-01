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




    Dictionary<int, GameObject> dialogMap = new Dictionary<int, GameObject>();

    // Start is called before the first frame update
    void Start()
    {
        for (int i = 0; i < dialogs.Length; i++)
        {
            dialogMap.Add(i, dialogs[i].objectDialog);
        }
    }

    // Update is called once per frame
    void Update()
    {

    }

    private void OnTriggerEnter2D(Collider2D collision)
    {

        if (dialogMap.ContainsValue(collision.gameObject))
        {
            if (!Script.sceneMap.ContainsKey(collision.gameObject.name))
            {
                Debug.Log("teste");

                dialogPanel.SetActive(true);
                dialogPanelImage.SetActive(true);
                Script.sceneMap.Add(collision.gameObject.name, 0);

                Script teste = dialogPanel.GetComponent<Script>();
                teste.Start();
            }



        }





    }

}
