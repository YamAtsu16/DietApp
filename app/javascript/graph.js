function graph(){

  const graphId = document.getElementById("pie-graph");

  // タンパク質の値を取得
  const protein = document.getElementById("protein");
  const proteinValue = Number(protein.textContent)
  // 脂質の値を取得
  const fat = document.getElementById("fat");
  const fatValue = Number(fat.textContent)
  // 炭水化物の値を取得
  const carbo = document.getElementById("carbo");
  const carboValue = Number(carbo.textContent)
  // 配列を作成
  const nutrients = [proteinValue, fatValue, carboValue]

  const pieGraph = new Chart(graphId, {
    type: 'pie',
    data: {
      labels: ["タンパク質", "脂質", "炭水化物"],
      datasets: [{
          backgroundColor: [
              "#CC0000",
              "#FFD700",
              "#009933",
          ],
          data: [proteinValue, fatValue, carboValue]
      }]
    },
    options: {
    }
  });

};

window.addEventListener( 'load', graph )