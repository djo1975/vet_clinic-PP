CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at TIMESTAMP NOT NULL,
  patient_id INTEGER NOT NULL,
  status VARCHAR(255) NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES patients(id)
);

CREATE TABLE patients (
  id SERIAL PRIMARY KEY, 
  name VARCHAR(250) NOT NULL, 
  date_of_birth DATE) NOT NULL;

CREATE TABLE invoices(
  id SERIAL PRIMARY KEY, 
  total_amount DECIMAL(5, 2) NOT NULL, 
  generated_at TIMESTAMP NOT NULL, 
  payed_at TIMESTAMP NOT NULL, 
  medical_history_id INT NOT NULL
  )









/* Add foreign key indexes */
CREATE INDEX patient_id_idx ON patients(id);
CREATE INDEX medical_history_id_idx ON medical_histories(id);
CREATE INDEX treatment_id_idx ON treatments(id);
CREATE INDEX invoice_id_idx ON invoices(id);
CREATE INDEX invoice_items_id_idx ON invoice_items(id);
CREATE INDEX medical_history_treatments_id_idx ON medical_history_treatments(id);
CREATE INDEX medical_history_treatments_medical_history_id_idx ON medical_history_treatments(medical_history_id);
CREATE INDEX medical_history_treatments_treatmet_id_idx ON medical_history_treatments(treatment_id);