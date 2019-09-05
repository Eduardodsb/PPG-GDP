using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class GameManagementScript : MonoBehaviour
{
    string sceneName;

    public GameObject dialogPanel;

    static public int numberColectables = 0;
    static public bool notDied = true;
    static public bool endGame = false;
    static public bool timeCounter = false;


    // Start is called before the first frame update
    void Start()
    {
        DontDestroyOnLoad(GameObject.Find("GameManager"));
        sceneName = GetScene();
        InitScene();
    }

    private string GetScene(){
        return SceneManager.GetActiveScene().name;
    }

    void InitScene(){
        if (sceneName.Equals("Menu")){
            gameObject.GetComponent<SoundManagerScript>().PlaySound("MenuSound");
        }
    }

    public void CallLoreScript1()
    {
        dialogPanel.SetActive(true);
        //MenuLoreScript.sceneNames = "menu_lore_extra_4";

        MenuLoreScript teste = dialogPanel.GetComponent<MenuLoreScript>();
        teste.Start();

    }



}