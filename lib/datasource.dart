import 'package:flutter/material.dart';

Color primaryBlack= Color(0xff202c3b);

class DataSource
{
  static String quote='"Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less."';

  static List qna=[
    {
      "question": "What is coronavirus?",
      "answer": "Coronavirus is a large family of viruses which may cause illness in animals or humans."
    },
    {
      "question": "What is COVID-19?",
      "answer": "COVID-19 is the infectious disease caused by the most recently discovered coronavirus. This new virus and disease was unknown before the outbreak in Wuhan, China, in December 2019."
    },
    {
      "question": "How is SARS-CoV-2 (the virus that causes COVID-19) transmitted?",
      "answer": "Direct person-to-person respiratory transmission is the primary means of transmission of severe acute respiratory syndrome coronavirus 2 (SARS-CoV-2). It is thought to occur mainly through close-range contact (ie, within approximately six feet or two meters) via respiratory particles; virus released in the respiratory secretions when a person with infection coughs, sneezes, or talks can infect another person if it is inhaled or makes direct contact with the mucous membranes.\n Infection might also occur if a person's hands are contaminated by these secretions or by touching contaminated surfaces and then they touch their eyes, nose, or mouth, although contaminated surfaces are not thought to be a major route of transmission.SARS-CoV-2 can also be transmitted longer distances through the airborne route (through inhalation of particles that remain in the air over time and distance), but the extent to which this mode of transmission has contributed to the pandemic is unclear. Scattered reports of SARS-CoV-2 outbreaks (eg, in a restaurant, on a bus) have highlighted the potential for longer-distance airborne transmission in enclosed, poorly ventilated spaces.While SARS-CoV-2 RNA has been detected in non-respiratory specimens (eg, stool, blood), neither fecal-oral nor bloodborne transmission appear to be significant sources of infection. SARS-CoV-2 infection has been described in animals, but there is no evidence to suggest that animals are a major source of transmission.",
    },
    {
      "question": "What is the incubation period for COVID-19?",
      "answer": "The incubation period for COVID-19 is thought to be within 14 days following exposure, with most cases occurring approximately four to five days after exposure."
    },
    {
      "question": "What are some of the important SARS-CoV-2 variants?",
      "answer": "Multiple SARS-CoV-2 variants are circulating globally. Some variants contain mutations in the surface spike protein, which mediates viral attachment to human cells and is a target for natural and vaccine-induced immunity. Thus, these variants have the potential to be more transmissible, cause more severe disease, and/or evade natural or vaccine-induced immune responses. Two of the more important circulating variants are:  ●B.1.1.7 lineage (Alpha)  ●B.1.617.2 lineage (Delta)",
    },
    {
      "question": "What factors are associated with severe COVID-19?",
      "answer": "Severe illness can occur in otherwise healthy individuals of any age, but it predominantly occurs in adults with advanced age and/or certain underlying medical comorbidities. These comorbidities and other less common comorbidities are compiled in a table by the United States Centers for Disease Control and Prevention (CDC); the strength of evidence informing each association varies."
    },
    {
      "question": "What is 'long-COVID'?",
      "answer": "'Long-COVID,' also referred to as post-COVID conditions, post-COVID syndrome, or postacute sequelae of SARS-CoV-2 infection (PASC), generally refers to symptoms that develop during or after acute COVID-19 illness, continue for ≥2 months (ie, 3 months from symptom onset), and are not explained by an alternative diagnosis. It is not yet known whether 'long-COVID' represents a new syndrome unique to COVID-19 or overlaps with recovery from similar illnesses. Persistent physical symptoms following acute COVID-19 are common and typically include fatigue, dyspnea, chest pain, and cough. Headache, joint pain, dysgeusia, myalgias, and diarrhea have also been reported. Common psychological and cognitive symptoms include poor concentration, insomnia, anxiety, and depression. The time to symptom resolution depends primarily on premorbid risk factors, the severity of the acute illness, and the spectrum of initial symptoms. However, prolonged symptoms are common even in patients with less severe disease who were never hospitalized."
    },
    {
      "question": "What are the major coagulation abnormalities in patients with COVID-19?",
      "answer": "A number of laboratory abnormalities have been reported, including high fibrinogen and D-dimer and mild prolongation of the prothrombin time (PT) and activated partial thromboplastin time (aPTT). Abnormal coagulation studies are mainly used to monitor clinical status and to help determine level of care. Very high D-dimer is associated with a high mortality rate. Atypical findings (eg, severe thrombocytopenia) should be further evaluated."
    },
    {
      "question": "Are there any COVID-19-specific therapies available for non-hospitalized patients?",
      "answer": "Monoclonal antibody therapies may reduce the risk of severe disease in high-risk outpatients. However, availability is limited, and they require parenteral administration and must be given early in the course of illness. These factors make administration operationally complicated.In the United States, monoclonal antibody therapies targeting SARS-CoV-2 are available for the treatment of non-hospitalized adults (≥18 years of age) and children (≥12 years of age weighing at least 40 kg) with mild to moderate COVID-19 and specific risk factors for severe disease (table 5). Additional conditions may place an individual at high risk for progression to severe COVID-19, and the use of monoclonal antibody therapy is not strictly limited to those with the risk factors listed in the table. For patients with early, symptomatic COVID-19 and risk factors for progression to severe illness, we suggest treatment with monoclonal antibody therapy based upon reductions in hospitalizations and mortality. The choice among options depends on local availability. Monoclonal antibody treatment should be given as soon as possible after diagnosis and within 7 to 10 days of symptom onset for maximal benefit.Evolving SARS-CoV-2 variants may impact the clinical efficacy of monoclonal antibody therapies. Clinicians should remain aware of the prevalence of variants in their local area and the resistance patterns to available monoclonal antibodies. Novel antiviral agents (eg, molnupiravir and paxlovid) may have a role in the management of patients with early, symptomatic COVID-19 and risk factors for progression to severe disease, but clinical trial results are not yet known and none are available for use in the United States. We do not routinely treat COVID-19 in non-hospitalized patients with high-titer convalescent plasma, glucocorticoids, antibiotics, anticoagulation, or antiplatelet therapy."
    },
    {
      "question": "What is the significance of a persistently positive RT-PCR for weeks after illness?",
      "answer": "Patients diagnosed with COVID-19 can have detectable SARS-CoV-2 RNA in upper respiratory tract specimens for weeks after the onset of symptoms. \nHowever, prolonged viral RNA detection does not necessarily indicate prolonged infectiousness. According to the CDC, isolation of infectious virus more than 10 days after illness onset is rare in patients whose symptoms have resolved. There is no standardized approach to management of patients with persistently positive reverse transcription polymerase chain reaction (RT-PCR) 10 days or more after resolution of symptoms. However, such patients are generally felt to have low infectiousness, particularly after mild to moderate disease and in the absence of immunocompromise. This is why symptom- and time-based approaches for discontinuation of precautions are recommended for most patients."
    },
    {
      "question": "Are antibiotics effective in prevnting or treating COVID-19?",
      "answer": "No. Antibiotics do not work against viruses, they only work on bacterial infections. COVID-19 is caused by a virus, so antibiotics do not work. Antibiotics should not be used as a means of prevention or treatment of COVID-19. They should only be used as directed by a physician to treat a bacterial infection."
    },
    {
      "question": "What is Community spread?",
      "answer": "Community spread means people have been infected with the virus in an area, including some who are not sure how or where they became infected. Each health department determines community spread differently based on local conditions. For information on community spread in your area, please visit your local health department's website."
    },
    {
      "question": "Should I use soap and water or hand sanitizer to protect  against COVID-19?",
      "answer": "Handwashing is one of the best ways to protect yourself and your family from getting sick. Wash your hands often with soap and water for at least 20 seconds, especially after blowing your nose, coughing, or sneezing; going to the bathroom; and before eating or preparing food. If soap and water are not readily available, use an alcohol-based hand sanitizer with at least 60% alcohol."
    }
  ];
}