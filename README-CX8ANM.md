# Decodium CX8ANM — edición Cóndor Tecnológico

Versión personalizada de **Decodium 4.0 Core Shannon** para la estación CX8ANM (Uruguay).

> Basada en [Decodium 4.0 Core Shannon](https://github.com/elisir80/Decodium-4.0-Core-Shannon)
> de Martino Merola **IU8LMC** y Salvatore Raccampo **9H1SR**, que a su vez deriva de WSJT-X
> (K1JT y colaboradores). Licencia **GPL-3.0** (ver `COPYING`). Todo el mérito técnico es de
> los autores originales.

## Qué cambia respecto al original

- Nombre visible "Decodium CX8ANM" e ícono propio (cóndor CX8ANM).
- Español como idioma por defecto.
- Créditos de la edición en la ventana "Acerca de".
- Actualizador automático desactivado (para que no instale la versión oficial encima).
- Instalador con identificador propio: se puede tener junto al Decodium oficial.
- Workflow **Suite CX8ANM (Windows)**: junta Decodium CX8ANM + DecoDXLog CX8ANM en un solo instalador.

## Compilar

- Decodium solo: Actions → **Build Windows x64** → Run workflow → artefacto `decodium-windows-x64-installer`.
- Suite: ver instrucciones al inicio de `.github/workflows/suite-cx8anm-windows.yml`.

## Traer cambios del original

```
git remote add upstream https://github.com/elisir80/Decodium-4.0-Core-Shannon.git
git fetch upstream
git merge upstream/main
```

73 de CX8ANM — Daniel Niño
