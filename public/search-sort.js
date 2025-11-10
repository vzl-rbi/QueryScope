const searchBox = document.getElementById("searchBox");
const rows = document.querySelectorAll("#carTable tbody tr");
const headers = document.querySelectorAll("th");

// Search
searchBox.addEventListener("keyup", () => {
  const text = searchBox.value.toLowerCase();
  rows.forEach(
    (row) =>
      (row.style.display = row.innerText.toLowerCase().includes(text)
        ? ""
        : "none")
  );
});

// Sort
headers.forEach((header) => {
  header.addEventListener("click", () => {
    const table = header.closest("table");
    const tbody = table.querySelector("tbody");
    const rowsArr = Array.from(tbody.querySelectorAll("tr"));
    const idx = Array.from(header.parentNode.children).indexOf(header);

    rowsArr.sort((a, b) =>
      a.children[idx].innerText.localeCompare(
        b.children[idx].innerText,
        undefined,
        { numeric: true }
      )
    );

    tbody.innerHTML = "";
    rowsArr.forEach((r) => tbody.appendChild(r));
  });
});
