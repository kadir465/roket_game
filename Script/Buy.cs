using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class Buy : MonoBehaviour
{
   public GameObject MaviÜsBig;
    public GameObject MaviÜsSmall;
    public GameObject Siyahüs;

    private static Buy instance;

    private void Awake()
    {
OnButtonPress();
       
    }

    public void ActivateSiyahÜs()
    {
        if (Siyahüs != null)
        {
            Siyahüs.SetActive(true);
        }
    }

    public void OnButtonPress()
    {
        SceneManager.LoadScene("SampleScene");
        if (instance == null)
        {
            instance = this;
            DontDestroyOnLoad(gameObject); // Nesneyi sahneler arasýnda korur
        }
        else
        {
            Destroy(gameObject); // Zaten varsa, birden fazla oluþturulmasýný engeller
        }

        // SiyahÜs'ü aktif hale getir
        ActivateSiyahÜs();
    }
}


