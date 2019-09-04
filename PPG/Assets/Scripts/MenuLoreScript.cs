using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class MenuLoreScript : MonoBehaviour
{
    public TextAsset inkJSONAsset;
    static public Story story;
    public Button buttonPrefab;
    int cont = 0;
    int counter = 0;
    //static public Dictionary<string, int> sceneMap = new Dictionary<string, int>();
    static public string sceneNames;
    

    // Start is called before the first frame update
    public void Start()
    {
        // Load the next story block
        story = new Story(inkJSONAsset.text);
        // Start the refresh cycle
        refresh();

    }

    // Refresh the UI elements
    //  - Clear any current elements
    //  - Show any text chunks
    //  - Iterate through any choices and create listeners on them
    void refresh()
    {
        // Clear the UI
        clearUI();

        // Create a new GameObject
        GameObject newGameObject = new GameObject("TextChunk");
        // Set its transform to the Canvas (this)
        newGameObject.transform.SetParent(this.transform, false);

        // Add a new Text component to the new GameObject
        Text newTextObject = newGameObject.AddComponent<Text>();
        // Set the fontSize larger
        newTextObject.fontSize = 15;
        //newTextObject.alignment = TextAnchor.MiddleCenter;
        // Set the text from new story block
        newTextObject.text = getNextStoryBlock();
        // Load Arial from the built-in resources
        newTextObject.lineSpacing = 2;
        newTextObject.font = (Font)Resources.Load("Fontes/PressStart2P");


        foreach (Choice choice in story.currentChoices)
        {
            Navigation customNav = new Navigation();
            customNav.mode = Navigation.Mode.None;
            Button choiceButton = Instantiate(buttonPrefab) as Button;
            choiceButton.navigation = customNav;
            choiceButton.transform.SetParent(this.transform, false);

            // Gets the text from the button prefab
            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;
            choiceText.fontSize = 25;
            choiceText.color = Color.white;
            choiceText.font = (Font)Resources.Load("Fontes/PressStart2P");
            // Set listener

            choiceButton.onClick.AddListener(delegate {
                //Debug.Log(GameManagementScript.hasColectables);

                if(choice.text == "Kawapi e a terra de Auerá" && !GameManagementScript.timeCounter)
                    newTextObject.text = "Não foi possível acessar a lore \"Kawapi e a terra de Auerá\" pois não foi atingido o objetivo ao longo do jogo";
                else if(choice.text == "A terra oculta e outras terras" && !GameManagementScript.notDied)
                    newTextObject.text = "Não foi possível acessar a lore \"A terra oculta e outras terras\" pois não foi atingido o objetivo ao longo do jogo";
                else if (choice.text == "Sobre Agnes" && !GameManagementScript.endGame)
                    newTextObject.text = "Não foi possível acessar a lore \"Sobre Agnes\" pois não foi atingido o objetivo ao longo do jogo";
                else if (choice.text == "Magia é saber o nome das coisas" && !GameManagementScript.hasColectables)
                    newTextObject.text = "Não foi possível acessar a lore \"Magia é saber o nome das coisas\" pois não foi atingido o objetivo ao longo do jogo";
                else
                OnClickChoiceButton(choice);
            });


        }




        // Debug.Log("Aqui" + story.currentChoices.Count);
        if (story.currentChoices.Count == 0)
        {
            //Debug.Log(story.state.currentPathString);

            //story.ResetState();
            GameObject.Find("LoreText").SetActive(false);
        }

    }

    // When we click the choice button, tell the story to choose that choice!
    void OnClickChoiceButton(Choice choice)
    {
        //Debug.Log("teste " + choice.pathStringOnChoice + " " + choice.sourcePath);

        
        if(choice.text == "> Retornar")
        {
            Start();
        }
        
        else{
            story.ChooseChoiceIndex(choice.index);



            refresh();
        }

    }

    // Clear out all of the UI, calling Destory() in reverse
    void clearUI()
    {
        int childCount = this.transform.childCount;
        for (int i = childCount - 1; i >= 0; --i)
        {
            GameObject.Destroy(this.transform.GetChild(i).gameObject);
        }
    }


    // Load and potentially return the next story block
    string getNextStoryBlock()
    {

        if (sceneNames != null)
        {
            Debug.Log(sceneNames);
            story.ChoosePathString(sceneNames);
            sceneNames = null;
        }
        

        string text = "";
        //text += story.Continue();
        while (story.canContinue)
        {
            text += story.Continue();
            text += "\r\n";
        }


        return text;
    }
}
