using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class PlayerManager : MonoBehaviour
{
    public static PlayerManager Instance; // Singleton �rne�i

    public GameObject enmy;



    public int asteroidHealth = 60; // Her asteroitin ba�lang�� can�

    private void Awake()
    {

    }

    private void OnTriggerEnter2D(Collider2D collision)
    {

        if (collision.gameObject.CompareTag("AsteroitCarp"))
        {
            asteroidHealth -= 10; // Can� 10 azalt

            
            if (asteroidHealth <= 0)
            {
                Destroy(enmy.gameObject); // Asteroiti yok et
            }
        }
    }

}
