##  A/B Test Design: Ghost Reseller Reactivation

### Hypothesis
> “Ghost Resellers who receive a ₹20 cashback + WhatsApp nudge will have 25% higher Reseller-Led GMV over 30 days compared to a control group.”

### Test Design
- **Treatment Group**: 2,400 Ghost Resellers → Receive ₹20 cashback + WhatsApp message  
- **Control Group**: 2,400 Ghost Resellers → No intervention  
- **Randomization Unit**: Reseller ID (to avoid contamination)  
- **Duration**: 30 days  
- **Primary Metric**: Reseller-Led GMV per reseller (₹)  
- **Guardrail Metrics**:  
  - Return rate (must not increase >2%)  
  - Support tickets (must not increase >5%)  
  - Cashback redemption rate  

### Sample Size Justification
- **MDE (Minimum Detectable Effect)**: 8% GMV lift  
- **Power**: 80%  
- **Significance Level (α)**: 5%  
- **Required per group**: 2,400 resellers  
- **Total**: 4,800 resellers (67% of our 7,150 Ghost Resellers at scale)

> *Formula used: [Evan Miller’s A/B Test Calculator](https://www.evanmiller.org/ab-testing/sample-size.html)*

### Success Criteria
- **Statistically significant** (p < 0.05) GMV lift ≥8%  
- **No negative impact** on guardrail metrics  
- **ROI positive**: (GMV uplift × 10% margin) > ₹20 cashback cost

### Why This Works for Meesho
- Uses **existing infrastructure** (WhatsApp, cashback wallet)  
- **Low risk**: Only targets dormant resellers (no cannibalization)  
- **Scalable**: If successful, can roll out to all 57,200 Ghost Resellers → **₹0.84 Cr/month net GMV**