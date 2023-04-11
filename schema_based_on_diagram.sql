CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at TIMESTAMP NOT NULL,
  patient_id INTEGER NOT NULL,
  status VARCHAR(255) NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES patients(id)
);











/* Add foreign key indexes */
CREATE INDEX patient_id_idx ON patients(id);
CREATE INDEX medical_history_id_idx ON medical_histories(id);
CREATE INDEX treatment_id_idx ON treatments(id);
CREATE INDEX invoice_id_idx ON invoices(id);
CREATE INDEX invoice_items_id_idx ON invoice_items(id);
CREATE INDEX medical_history_treatments_id_idx ON medical_history_treatments(id);
CREATE INDEX medical_history_treatments_medical_history_id_idx ON medical_history_treatments(medical_history_id);
CREATE INDEX medical_history_treatments_treatmet_id_idx ON medical_history_treatments(treatment_id);