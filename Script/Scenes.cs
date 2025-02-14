using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
public class Scenes : MonoBehaviour
{
    public Score Score;
    public int totalPara;
    public TextMeshProUGUI totalParatext;

    public string x = "SampleScene";
    // Update is called once per frame
    public void StartScens()
    {
        SceneManager.LoadScene(x);
    }
    public string y = "home";
    public void StartSceans2()
    {
        SceneManager.LoadScene(y);
    }
    public string z = "openGame";
    public void YrnidenOyna()
    {
        SceneManager.LoadScene(z);
    }
    public string a = "oyunSonu";
    public void oyunSonu()
    {
        Score.paraSay=totalPara;
        totalParatext.text = totalPara.ToString();
        SceneManager.LoadScene(a);
    }
    public void oyunKapa()
    {
        // Oyunu kapatýr
        Application.Quit();

    }
}
