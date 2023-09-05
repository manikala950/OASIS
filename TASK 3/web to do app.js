function addTask(){
    const inputBox=document.getElementById("input-box");
    const taskText=inputBox.value.trim();
    if(taskText !==" "){
        const listContainer=document.getElementById("list-container");
        const listItem=document.createElement("li");
        listItem.innerText=taskText;
        listItem.innerHTML +='<button class="delete" onClick="deleteTask(this)">Delete</button>';
        listContainer.appendChild(listItem);
        inputBox.value=" ";
    }
    
    }
function deleteTask(button){
    const listItem=button.parentElement;
    listItem.remove();
}


 