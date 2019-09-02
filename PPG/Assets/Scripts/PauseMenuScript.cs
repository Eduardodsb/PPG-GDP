using System;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.SceneManagement;
using UnityEngine;

public class PauseMenuScript : MonoBehaviour
{
    bool isGamePaused = false;

    public GameObject PauseMenu;

    string nameScene;

    private void Start()
    {
        nameScene = SceneManager.GetActiveScene().name;
        
    }


    // Update is called once per frame
    void Update()
    {   

        if(nameScene == "Credits" && Input.GetKeyDown(KeyCode.Escape))
        {
            if (isGamePaused)
            {
                Resume();
            }
            else
            {
                Pause();
            }
        }

        if (Input.GetKeyDown(KeyCode.Escape) && PlayerMovement.allowmovement)
        {
            if (isGamePaused)
            {
                Resume();
            }
            else
            {
                Pause();
            }
        }
        

    }

    private void Pause()
    {
        PauseMenu.SetActive(true);
        Time.timeScale = 0f;
        isGamePaused = true;
    }

    public void Resume()
    {
        PauseMenu.SetActive(false);
        Time.timeScale = 1f;
        isGamePaused = false;
    }

    public void LoadMenu()
    {
        Resume();
        Destroy(GameObject.Find("GameManager"));
        PlayerMovement.allowmovement = false;
        SceneManager.LoadScene(0);
    }
    
    public void QuitGame()
    {
        Application.Quit();
    }
}
