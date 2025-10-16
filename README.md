# 🎟️ XISTickets

![SwiftUI](https://img.shields.io/badge/SwiftUI-5.9-blue?style=flat-square) ![iOS](https://img.shields.io/badge/iOS-16+-lightgrey?style=flat-square) ![macOS](https://img.shields.io/badge/macOS-13+-lightgrey?style=flat-square) ![Xcode](https://img.shields.io/badge/Xcode-15+-blue?style=flat-square)

**Aplicativo de compra e gerenciamento de ingressos desenvolvido com SwiftUI**
**Ticket purchasing and management app built entirely with SwiftUI**

---

## 🧩 Sobre o Projeto | About the Project

**XISTickets** é um aplicativo moderno e intuitivo que permite visualizar, armazenar e gerenciar ingressos digitais de eventos de forma simples e segura.
Desenvolvido **100% em SwiftUI**, o app prioriza uma experiência fluida, com design limpo e integração com temas claros e escuros.

**XISTickets** is a modern and intuitive app that lets users view, store, and manage digital event tickets easily and securely.
Built entirely with **SwiftUI**, it provides a smooth experience with a clean design and full light/dark mode support.

---

## 🖥️ Tecnologias | Technologies

* **SwiftUI** – Interface declarativa moderna da Apple
* **Combine** – Reatividade e gerenciamento de estado
* **AppStorage / EnvironmentObject** – Persistência leve e injeção de dependência
* **SF Symbols** – Ícones nativos
* **Localization (en/pt)** – Suporte a múltiplos idiomas

---

## 📱 Funcionalidades | Features

### 🎫 Tela de Ingressos (TicketsView)

* Lista de ingressos comprados
* Informações: nome do evento, data da compra, tipo de ingresso e local
* Exibição do **QR Code** do ingresso em um modal
* Design moderno com **SwiftUI Cards**

### 👤 Perfil (ProfileView)

* Gerenciamento de idioma (Português / English)
* Personalização de tema (modo claro/escuro)
* Atualização de informações do usuário e foto de perfil

### 🏠 HomeView

* Acesso rápido aos principais recursos do app
* Destaques de eventos e promoções

### 🔐 LoginView

* Autenticação simples e segura
* Interface minimalista com transições suaves

---

## 🌗 Suporte a Tema | Theme Support

O app se adapta automaticamente ao modo **claro** e **escuro**, utilizando o `@EnvironmentObject var theme` para manter a consistência visual.

The app automatically adapts to **light** and **dark** modes using a global `Theme` object via `@EnvironmentObject`.

---

## 📦 Estrutura do Projeto | Project Structure

```
XIS Tickets/
│
├── Views/
│   ├── LoginView.swift
│   ├── HomeView.swift
│   ├── TicketsView.swift
│   ├── ProfileView.swift
│
├── Models/
│   ├── PurchasedTicket.swift
│   ├── Theme.swift
│
├── Resources/
│   ├── Assets.xcassets/        ← Imagens e QR Codes
│   ├── Localizable.strings     ← Traduções
│
└── XIS_TicketsApp.swift        ← Ponto de entrada principal
```

---

## ⚙️ Como Executar | How to Run

### 📋 Pré-requisitos | Requirements

* **macOS 13.0+**
* **Xcode 15+**
* **iOS 16.0+ (mínimo)**
* **Swift 5.9+**

### ▶️ Passos | Steps

1. Clone o repositório:

   ```bash
   git clone https://github.com/seuusuario/XISTickets.git
   ```
2. Abra o projeto no **Xcode**:

   ```bash
   open "XIS Tickets.xcodeproj"
   ```
3. Selecione o **Simulator** ou seu **iPhone físico**
4. Clique em **Run (⌘ + R)**

---

## 🖼️ Adicionando QR Codes | Adding QR Codes

1. Abra **Assets.xcassets** no Xcode
2. Clique com o botão direito → **New Image Set**
3. Nomeie o asset conforme o campo `qrCode` (ex: `qrcode1`, `qrcode2`)
4. Arraste a imagem do QR Code para os campos **1x**, **2x** ou **3x**

---

## 🧠 Conceitos-Chave | Key Concepts

* **Data-driven UI:** cada tela é atualizada automaticamente quando os dados mudam
* **Reusable Components:** todas as views são modulares e reusáveis
* **Declarative Design:** a interface é descrita pelo estado atual, sem lógica imperativa complexa

---

## 🧑‍🎨 Design

O visual do app foi inspirado em uma identidade moderna, com o **X verde** representando inovação e acessibilidade.
Paleta baseada em tons de **verde neon** e **cinza escuro**, garantindo contraste e legibilidade.

---

## 🏁 Próximas Etapas | Next Steps

* Integração com API de eventos
* Pagamento in-app via Apple Pay
* Notificações de lembrete de eventos

---

## 📄 Licença | License

Este projeto é distribuído sob a licença **MIT**.
This project is licensed under the **MIT License**.

---

### ✨ Autor | Author

**Daniel Mendes**
📧 contato: [dxnzera@gmail.com](mailto:dxnzera@gmail.com)
📍 Brasil | Brazil
