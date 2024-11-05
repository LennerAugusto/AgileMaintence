//using AgileMaintence.Data;
//using Microsoft.AspNetCore.Components;
//using Microsoft.AspNetCore.Components.Web;

//var builder = WebApplication.CreateBuilder(args);

//// Add services to the container.
//builder.Services.AddRazorPages();
//builder.Services.AddServerSideBlazor();
//builder.Services.AddSingleton<WeatherForecastService>();

//var app = builder.Build();

//// Configure the HTTP request pipeline.
//if (!app.Environment.IsDevelopment())
//{
//    app.UseExceptionHandler("/Error");
//    // The default HSTS value is 30 days. You may want to change this for production scenarios, see https://aka.ms/aspnetcore-hsts.
//    app.UseHsts();
//}

//app.UseHttpsRedirection();

//app.UseStaticFiles();

//app.UseRouting();

//app.MapBlazorHub();
//app.MapFallbackToPage("/_Host");

//app.Run();


//CONFIG API
using AgileMaintence.Data;
using Microsoft.AspNetCore.Components;
using Microsoft.AspNetCore.Components.Web;
using System.Net.Http;

var builder = WebApplication.CreateBuilder(args);

// Carregar o appsettings.json e registrar o HttpClient
var config = builder.Configuration; // Usa a configuração já carregada no builder
var apiBaseUrl = config["ApiSettings:BaseUrl"];

if (string.IsNullOrEmpty(apiBaseUrl))
{
    throw new InvalidOperationException("A configuração 'ApiSettings:BaseUrl' não foi encontrada em appsettings.json.");
}

builder.Services.AddScoped(sp => new HttpClient { BaseAddress = new Uri(apiBaseUrl) });

// Adicionar serviços ao contêiner
builder.Services.AddRazorPages();
builder.Services.AddServerSideBlazor();
builder.Services.AddSingleton<WeatherForecastService>();

var app = builder.Build();

// Configuração do pipeline de requisição HTTP
if (!app.Environment.IsDevelopment())
{
    app.UseExceptionHandler("/Error");
    // O valor padrão do HSTS é 30 dias. Para produção, veja https://aka.ms/aspnetcore-hsts.
    app.UseHsts();
}

app.UseHttpsRedirection();
app.UseStaticFiles();
app.UseRouting();

app.MapBlazorHub();
app.MapFallbackToPage("/_Host");

app.Run();

