using System;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    public Image[] healthImages; // Kalpler bir dizi olarak tanýmlandý
    public float maxHealth = 100f;
    private float currentHealth;
    public GameObject destroy;

    public Scenes sahne;

    void Start()
    {
        currentHealth = maxHealth;
    }

    public void OnTriggerEnter2D(Collider2D collision)
    {
        if (collision.CompareTag("mermi")) // Eðer çarpma nesnesine temas ederse
        {
            currentHealth =currentHealth-5; // Saðlýðý azalt
            UpdateHealthBar(); // Saðlýk barýný güncelle
        }
    }

    void UpdateHealthBar()
    {
        // Saðlýk deðerine göre görselleri yok et
        int healthIndex = Mathf.FloorToInt((currentHealth / maxHealth) * healthImages.Length);

        for (int i = 0; i < healthImages.Length; i++)
        {
            healthImages[i].gameObject.SetActive(i < healthIndex); // Saðlýk durumuna göre aktif/pasif yap
        }

        if (currentHealth <= 0)
        {
            GameOver(); // Saðlýk sýfýrlandýðýnda oyun bitiþ iþlemi
        }
    }

    void GameOver()
    {
       Destroy(gameObject);
       if(gameObject!=null)
            SceneManager.LoadScene("oyunSonu");
    }
}
