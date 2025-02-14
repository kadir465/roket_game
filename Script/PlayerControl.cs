using System;
using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;
using UnityEngine.SceneManagement;

public class PlayerControl : MonoBehaviour
{
    [SerializeField]
    private int speed=12;


    public Animator animator3;
    Rigidbody2D rb;
    Vector3 velocity;
    public Transform[] roads;

    
   

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        animator3 = rb.GetComponent<Animator>();
    }

    void Update()
    {
        float moveX = Input.GetAxis("Horizontal"); // Saða/Sola
        float moveY = Input.GetAxis("Vertical");   // Yukarý/Aþaðý
        // Hareket yönü belirleme
        velocity = new Vector3(moveX, moveY, 0f);

        // Karakterin pozisyonunu güncelle
        transform.position += velocity * speed * Time.deltaTime;

        // Karakterin dönüþünü ayarla
        if (moveY > 0) // Saða hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, +90); // Saða dön,

        }
        else if (moveY < 0) // Sola hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, -90); // Sola dön
        }
        else if (moveX < 0) // Yukarý hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, 180); // Yukarý dön
        }
        else if (moveX > 0) // Aþaðý hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, 0); // Aþaðý dön
        }

    
    }

    public GameObject roadPrefab; // Yol prefabý
    public Transform lastRoad;    // Mevcut son yol (pozisyonunu referans alýr)
    public float roadLength = 10f; // Yol uzunluðu (bir sonraki yolun nerede spawnlanacaðýný belirlemek için)
    public float roadHeight = 10f;
    public GameObject yokedilcek;
    void OnTriggerEnter2D(Collider2D collision)
    {
        // Eðer çarpýþan obje "Sahne" tag'ine sahipse
        if (collision.gameObject.CompareTag("Sahne"))
        {
            // Yeni yolun pozisyonunu yukarý taþýmak için y eksenini artýr
            Vector3 newRoadPosition = lastRoad.position + new Vector3(0f, roadHeight, 0f);

            // Yeni bir yol oluþtur
            GameObject newRoad = Instantiate(roadPrefab, newRoadPosition, Quaternion.identity);

            // Yeni yolu son yol olarak ayarla
            lastRoad = newRoad.transform;
        }

        if (collision.gameObject.CompareTag("gameSon"))
        {
        SceneManager.LoadScene("oyunSonu");
}
    }
}