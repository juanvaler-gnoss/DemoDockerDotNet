//// See https://aka.ms/new-console-template for more information
//using System.Net;

//HttpClient client = new HttpClient();
//byte[] bytes = await client.GetByteArrayAsync("https://d1.awsstatic.com/acs/characters/Logos/Docker-Logo_Horizontel_279x131.b8a5c41e56b77706656d61080f6a0217a3ba356d.png");
//Directory.CreateDirectory("images");

//File.WriteAllBytes(Path.Combine("images", "downloaded.png"), bytes);

//Console.WriteLine("Downloaded!");

using System;
using System.Diagnostics;

Console.WriteLine("Introduce la imagen a descargar: ");
string url = Console.ReadLine();

string name = url.Substring(url.LastIndexOf('/') + 1);
string folder = Environment.GetEnvironmentVariable("OutputFolder");
if (string.IsNullOrEmpty(folder))
{
    folder = "output";
}
Directory.CreateDirectory(folder);


ProcessStartInfo info = new ProcessStartInfo("curl", $" -o \"{Path.Combine(folder, name)}\" {url}");
Process process = Process.Start(info);
process.OutputDataReceived += (sender, args) => Console.WriteLine($"received output: {args.Data}");
process.ErrorDataReceived += (sender, args) => Console.WriteLine($"ERROR: {args.Data}");
process.Start();
process.WaitForExit();

if(process.ExitCode == 0)
{
    Console.WriteLine("Downloaded!");
}