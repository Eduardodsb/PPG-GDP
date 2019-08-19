using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class Script : MonoBehaviour
{
    public TextAsset inkJSONAsset;
    private Story story;
    public Button buttonPrefab;
    int cont = 0;
    int counter = 0;

    // Start is called before the first frame update
    void Start()
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
    void refresh(){
        // Clear the UI
        clearUI();

        // Create a new GameObject
        GameObject newGameObject = new GameObject("TextChunk");
        // Set its transform to the Canvas (this)
        newGameObject.transform.SetParent(this.transform, false);

        // Add a new Text component to the new GameObject
        Text newTextObject = newGameObject.AddComponent<Text>();
        // Set the fontSize larger
        newTextObject.fontSize = 24;
        // Set the text from new story block
        newTextObject.text = getNextStoryBlock();
        // Load Arial from the built-in resources
        newTextObject.font = Resources.GetBuiltinResource(typeof(Font), "Arial.ttf") as Font;

        foreach (Choice choice in story.currentChoices)
        {
            Button choiceButton = Instantiate(buttonPrefab) as Button;
            choiceButton.transform.SetParent(this.transform, false);

            // Gets the text from the button prefab
            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;

            // Set listener
            choiceButton.onClick.AddListener(delegate {
                OnClickChoiceButton(choice);
            });

         

        }

    }

    // When we click the choice button, tell the story to choose that choice!
    void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
       
        cont++;
        if (cont == 2)
        {
            GameObject.Find("Light").GetComponent<Animator>().enabled = true;
        }
        refresh();
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
    string getNextStoryBlock(){

        //Redireciona para um bloco específico do ink apenas uma x
        if (counter == 0)
        {
            story.ChoosePathString("sala_central");
            counter++;
        }
        
        string text = "";
        //text += story.Continue();
          while (story.canContinue){
              text += story.Continue();

          }

       /* if (story.canContinue == false){
            GameObject.Find("DialogPanel").SetActive(false);
        }*/

        //Me permite verificar se dentro do bloco === === existe algum metadato #teste
        //Debug.Log(story.currentTags.Contains("teste")); 
        
        /*    Debug.Log("oie");
          story.EvaluateFunction("sala_central", "dudu");
            Debug.Log(story.variablesState["name"]);*/

        return text;
    }

    // Update is called once per frame
    void Update()
    {

    }
}