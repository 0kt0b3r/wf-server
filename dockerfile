FROM mcr.microsoft.com/dotnet/runtime:6.0 AS base
WORKDIR /app

# Копируем все файлы эмулятора
COPY . ./

# Точка входа для .NET 6 эмулятора
ENTRYPOINT ["dotnet", "EmuWarface.dll"]