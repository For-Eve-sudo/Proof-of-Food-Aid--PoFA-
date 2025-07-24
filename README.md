# Proof of Food Aid (PoFA)
 Food waste, lack of transparency in donations, and unequal food distribution.

Absolutely! Here's a complete and clean **`README.md`** file for your project **Proof-of-Food-Aid (PoFA)** using Clarinet and Clarity on the Stacks blockchain:

---

## 🥫 Proof-of-Food-Aid (PoFA)

A lightweight Clarity smart contract to transparently track food donations on the blockchain — enabling verifiable, tamper-proof records that empower NGOs, governments, and communities to fight hunger and improve accountability.

---

### 📦 Project Structure

```
Proof-of-Food-Aid--PoFA/
├── contracts/
│   └── pofa.clar         # Main smart contract
├── tests/
│   └── pofa_test.ts      # (Optional) Unit tests
├── Clarinet.toml         # Project config
└── README.md             # This file
```

---

### 💡 How It Works

* Donors can record a food donation by calling the `record-donation` function with:

  * `amount`: quantity of food donated (uint)
  * `region`: ASCII string (max 10 chars) for the region name or code

* The contract:

  * Assigns a unique ID to the donation
  * Saves the donor, amount, and region on-chain
  * Allows anyone to retrieve donation data with `get-donation`

---

### 🧠 Features

* ✅ Simple and fast Clarity contract
* ✅ Tracks donation amount, region, and sender
* ✅ Fully transparent and auditable
* ✅ No tokens or fees required
* ✅ Easy to integrate into civic or NGO dashboards


### ⚠️ Notes

* `block-height` is **not recorded** because Clarity does not allow reading block info in public functions.
* If needed, you can pass the block height from the frontend or track it via transaction metadata.

---

### 📜 License

MIT — use freely, improve it, and help feed the world.