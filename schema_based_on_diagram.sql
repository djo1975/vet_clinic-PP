CREATE TABLE medical_histories (
  id SERIAL PRIMARY KEY,
  admitted_at TIMESTAMP NOT NULL,
  patient_id INTEGER NOT NULL,
  status VARCHAR(255) NOT NULL,
);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoices_medical_histories
FOREIGN KEY (medical_history_id)
REFERENCES medical_histories(id);


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
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id)
  )

create table treatments (
  id SERIAL PRIMARY KEY,
  type VARCHAR(250) NOT NULL,
  name VARCHAR(250) NOT NULL,
)

ALTER TABLE invoice_items
ADD CONSTRAINT fk_invoice_items_treatments
FOREIGN KEY (treatment_id)
REFERENCES treatments(id);

ALTER TABLE invoices
ADD CONSTRAINT fk_invoices_treatments
FOREIGN KEY (treatment_id)
REFERENCES treatments(id); 

create table invoice_items (
  id primary key,
  unit_price DECIMAL(5, 2) NOT NULL,
  quantity INT NOT NULL,
  total_price DECIMAL(5, 2) NOT NULL,
  invoice_id INT NOT NULL,
  treatment_id INT NOT NULL
)

CREATE TABLE medical_history_treatments (
  medical_history_id INTEGER NOT NULL,
  treatment_id INTEGER NOT NULL,
  PRIMARY KEY (medical_history_id, treatment_id),
  FOREIGN KEY (medical_history_id) REFERENCES medical_histories(id),
  FOREIGN KEY (treatment_id) REFERENCES treatments(id)
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
