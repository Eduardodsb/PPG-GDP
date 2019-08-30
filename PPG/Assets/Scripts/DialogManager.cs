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
    [SerializeField]
    public Dialogs[] dialogs;


    Dictionary<int, string> dialogMap = new Dictionary<int, string>();

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



    }

}
