const pages = document.querySelectorAll(".page")
const header = document.querySelector("header")
const nbPages = pages.length //nombres pages du formulaire d'inscription
let pageActive = 1




window.onload = () => {
    //Affichage première page formulaire
    document.querySelector(".page").style.display = "initial"

    //Affichage du numéro des pages+parcours
    pages.forEach((page, index) => {
        //Création de l'élément numéro de page
        let element = document.createElement("div")
        element.classList.add("page-num")
        element.id = "num" + (index + 1)
        if (pageActive == index + 1) {

            element.classList.add("active")
        }
        element.innerHTML = index + 1
        header.appendChild(element)
    })

    //Boutons suivants
    let boutons = document.querySelectorAll(".next")
    for (let bouton of boutons) {
        bouton.addEventListener("click", pageSuivante)
    }
    //Boutons précédents
    boutons = document.querySelectorAll(".prev")
    for (let bouton of boutons) {
        bouton.addEventListener("click", pagePrecedente)
    }
}


//Fonction page suivante
function pageSuivante() {

    //Disparition de toutes les pages
    for (let page of pages) {
        page.style.display = "none"
    }
    //Affichage de la page suivante
    this.parentElement.nextElementSibling.style.display = "initial"

    //Désactivation page active
    document.querySelector(".active").classList.remove("active")

    //Incrémentation page active
    pageActive++

    //Activation nouvelle page
    document.querySelector("#num" + pageActive).classList.add("active")
}


//Fonction page précédente
function pagePrecedente() {

    //Disparition de toutes les pages
    for (let page of pages) {
        page.style.display = "none"
    }
    //Affichage de la page suivante
    this.parentElement.previousElementSibling.style.display = "initial"

    //Désactivation page active
    document.querySelector(".active").classList.remove("active")

    //Incrémentation page active
    pageActive--

    //Activation nouvelle page
    document.querySelector("#num" + pageActive).classList.add("active")
}