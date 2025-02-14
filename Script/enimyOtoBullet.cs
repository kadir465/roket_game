using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;
using JetBrains.Annotations; // TextMeshPro namespace

public class AsteroitSpanwner : MonoBehaviour
{
    public GameObject hedef;
    [SerializeField]
    private int speed = 0;
    public Animator animator1;
    public Animator animator2;
   
    public Animator animator3;
    Rigidbody2D rb;
    Vector3 velocity;
    public Transform[] roads;


    public GameObject BulletPrefab; // Prefab, sahnedeki bir nesne deðil!
    public float speedShoat = 7f;
    public Transform shoatPosition;
    public float fireRate = 2.5f; // Mermilerin ateþlenme sýklýðý (saniye cinsinden)

    void Start()
    {
        rb = GetComponent<Rigidbody2D>();
        animator3 = rb.GetComponent<Animator>();

        // Oto mermi ateþlemeyi baþlat
        InvokeRepeating(nameof(atesleme1), 1f, fireRate);

    }

    void Update()
    {
        float moveX = Input.GetAxis("Horizontal"); // Saða/Sola
        float moveY = Input.GetAxis("Vertical");   // Yukarý/Aþaðý
        velocity = new Vector3(moveX, moveY, 0f);
        transform.position += velocity * speed * Time.deltaTime;

        // Karakterin dönüþünü ayarla
        // Karakterin dönüþünü ayarla
        if (moveY < 0) // Saða hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, +90); // Saða dön,

        }
        else if (moveY > 0) // Sola hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, -90); // Sola dön
        }
        else if (moveX > 0) // Yukarý hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, 180); // Yukarý dön
        }
        else if (moveX < 0) // Aþaðý hareket
        {
            transform.rotation = Quaternion.Euler(0, 0, 0); // Aþaðý dön
        }
    }

    public void atesleme1()
    {
        if (BulletPrefab == null)
        {
            Debug.LogError("BulletPrefab eksik! Lütfen Inspector'dan atayýn.");
            return;
        }

        // Yeni bir mermi oluþtur
        
        if (animator3 != null) // Transform nesnesi hala sahnede mi?
        {
            GameObject bullet = Instantiate(BulletPrefab, shoatPosition.position, shoatPosition.rotation);

            Rigidbody2D rb = bullet.GetComponent<Rigidbody2D>();
            if (rb != null)
            {
                rb.velocity = shoatPosition.up * speedShoat;
               
            }

            // Mermiyi 3 saniye sonra sahneden sil
            Destroy(bullet, 1.5f);
        }
        // Rigidbody2D bileþenini al ve yön belirle
      

       
    }
 
}
