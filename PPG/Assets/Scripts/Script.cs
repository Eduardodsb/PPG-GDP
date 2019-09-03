using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Ink.Runtime;

public class Script : MonoBehaviour
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
        newTextObject.fontSize = 15;

        // Set the text from new story block
        newTextObject.text = getNextStoryBlock();
        // Load Arial from the built-in resources
        newTextObject.lineSpacing = 2;
        newTextObject.font = (Font)Resources.Load("Fontes/PressStart2P");

        foreach (Choice choice in story.currentChoices)
        {
            Button choiceButton = Instantiate(buttonPrefab) as Button;
            choiceButton.transform.SetParent(this.transform, false);

            // Gets the text from the button prefab
            Text choiceText = choiceButton.GetComponentInChildren<Text>();
            choiceText.text = choice.text;
            choiceText.color = Color.white;
            choiceText.font = (Font)Resources.Load("Fontes/PressStart2P");
            // Set listener
            choiceButton.onClick.AddListener(delegate {
                OnClickChoiceButton(choice);
            });

         

        }
        // Debug.Log("Aqui" + story.currentChoices.Count);
        if (story.currentChoices.Count == 0)
        {
            GameObject.Find("DialogPanel").SetActive(false);
            GameObject.Find("DialogPanelImage").SetActive(false);
            GameObject.Find("Player").GetComponent<PlayerMovement>().AllowMovement();
            GameObject.Find("Player").GetComponent<PlayerMovement>().Unparalyse();
        }

    }

    // When we click the choice button, tell the story to choose that choice!
    void OnClickChoiceButton(Choice choice)
    {
        story.ChooseChoiceIndex(choice.index);
        //Debug.Log(story.currentChoices.Count);
        cont++;
        if (cont == 3)
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

        
        if (sceneNames != null)
        {
            GameObject.Find("Player").GetComponent<PlayerMovement>().DisallowMovement();
            GameObject.Find("Player").GetComponent<PlayerMovement>().Paralyse();
            GameObject.Find("Player").GetComponent<PlayerMovement>().animator.SetFloat("Speed", 0);
            story.ChoosePathString(sceneNames);
            sceneNames = null;
        }



            /*
            if (sceneMap.ContainsKey("vortex_1") && sceneMap["vortex_1"] == 0)
            {
                GameObject.Find("Player").GetComponent<PlayerMovement>().DisallowMovement();
                GameObject.Find("Player").GetComponent<PlayerMovement>().Paralyse();
                GameObject.Find("Player").GetComponent<PlayerMovement>().animator.SetFloat("Speed", 0);
                story.ChoosePathString("vortex_1");
                sceneMap["vortex_1"] += 1;
                //sceneMap.Remove();


            }

            else
            {
                if (sceneMap.ContainsKey("sala_1") && sceneMap["sala_1"] == 0)
                {
                    GameObject.Find("Player").GetComponent<PlayerMovement>().DisallowMovement();
                    GameObject.Find("Player").GetComponent<PlayerMovement>().Paralyse();
                    GameObject.Find("Player").GetComponent<PlayerMovement>().animator.SetFloat("Speed", 0);
                    story.ChoosePathString("sala_1");
                    sceneMap["sala_1"] += 1;
                }
            }
            */



            //Redireciona para um bloco específico do ink apenas uma x
            /*  if (counter == 0)
              {
                  story.ChoosePathString("sala_central");
                  counter++;
              }*/

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