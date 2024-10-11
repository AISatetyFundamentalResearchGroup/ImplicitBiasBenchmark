cd baselines_discriminative

python vanilla.py -l en -c Age
python vanilla.py -l en -c Disability_status
python vanilla.py -l en -c Gender_identity
python vanilla.py -l en -c Nationality
python vanilla.py -l en -c Physical_appearance
python vanilla.py -l en -c Race_ethnicity
python vanilla.py -l en -c Religion
python vanilla.py -l en -c SES
python vanilla.py -l en -c Sexual_orientation

python dr.py -l en -c Age
python dr.py -l en -c Disability_status
python dr.py -l en -c Gender_identity
python dr.py -l en -c Nationality
python dr.py -l en -c Physical_appearance
python dr.py -l en -c Race_ethnicity
python dr.py -l en -c Religion
python dr.py -l en -c SES
python dr.py -l en -c Sexual_orientation

python dr+c.py -l en -c Age
python dr+c.py -l en -c Disability_status
python dr+c.py -l en -c Gender_identity
python dr+c.py -l en -c Nationality
python dr+c.py -l en -c Physical_appearance
python dr+c.py -l en -c Race_ethnicity
python dr+c.py -l en -c Religion
python dr+c.py -l en -c SES
python dr+c.py -l en -c Sexual_orientation

cd ../disguise_discriminative

python disguise.py -l en -c Age
python disguise.py -l en -c Disability_status
python disguise.py -l en -c Gender_identity
python disguise.py -l en -c Nationality
python disguise.py -l en -c Physical_appearance
python disguise.py -l en -c Race_ethnicity
python disguise.py -l en -c Religion
python disguise.py -l en -c SES
python disguise.py -l en -c Sexual_orientation

cd ../mental_deception_discriminative

python general_mind.py -l en -c Age
python general_mind.py -l en -c Disability_status
python general_mind.py -l en -c Gender_identity
python general_mind.py -l en -c Nationality
python general_mind.py -l en -c Physical_appearance
python general_mind.py -l en -c Race_ethnicity
python general_mind.py -l en -c Religion
python general_mind.py -l en -c SES
python general_mind.py -l en -c Sexual_orientation

cd ../memory_deception_discriminative

python memory_deception.py -l en -c Age
python memory_deception.py -l en -c Disability_status
python memory_deception.py -l en -c Gender_identity
python memory_deception.py -l en -c Nationality
python memory_deception.py -l en -c Physical_appearance
python memory_deception.py -l en -c Race_ethnicity
python memory_deception.py -l en -c Religion
python memory_deception.py -l en -c SES
python memory_deception.py -l en -c Sexual_orientation

cd ../teaching_discriminative

python teaching.py -l en -c Age
python teaching.py -l en -c Disability_status
python teaching.py -l en -c Gender_identity
python teaching.py -l en -c Nationality
python teaching.py -l en -c Physical_appearance
python teaching.py -l en -c Race_ethnicity
python teaching.py -l en -c Religion
python teaching.py -l en -c SES
python teaching.py -l en -c Sexual_orientation

cd ../baselines_discriminative

python vanilla.py -l zh -c Age
python vanilla.py -l zh -c Disability_status
python vanilla.py -l zh -c Gender_identity
python vanilla.py -l zh -c Nationality
python vanilla.py -l zh -c Physical_appearance
python vanilla.py -l zh -c Race_ethnicity
python vanilla.py -l zh -c Religion
python vanilla.py -l zh -c SES
python vanilla.py -l zh -c Sexual_orientation

python dr.py -l zh -c Age
python dr.py -l zh -c Disability_status
python dr.py -l zh -c Gender_identity
python dr.py -l zh -c Nationality
python dr.py -l zh -c Physical_appearance
python dr.py -l zh -c Race_ethnicity
python dr.py -l zh -c Religion
python dr.py -l zh -c SES
python dr.py -l zh -c Sexual_orientation

python dr+c.py -l zh -c Age
python dr+c.py -l zh -c Disability_status
python dr+c.py -l zh -c Gender_identity
python dr+c.py -l zh -c Nationality
python dr+c.py -l zh -c Physical_appearance
python dr+c.py -l zh -c Race_ethnicity
python dr+c.py -l zh -c Religion
python dr+c.py -l zh -c SES
python dr+c.py -l zh -c Sexual_orientation

cd ../disguise_discriminative

python disguise.py -l zh -c Age
python disguise.py -l zh -c Disability_status
python disguise.py -l zh -c Gender_identity
python disguise.py -l zh -c Nationality
python disguise.py -l zh -c Physical_appearance
python disguise.py -l zh -c Race_ethnicity
python disguise.py -l zh -c Religion
python disguise.py -l zh -c SES
python disguise.py -l zh -c Sexual_orientation

cd ../mental_deception_discriminative

python general_mind.py -l zh -c Age
python general_mind.py -l zh -c Disability_status
python general_mind.py -l zh -c Gender_identity
python general_mind.py -l zh -c Nationality
python general_mind.py -l zh -c Physical_appearance
python general_mind.py -l zh -c Race_ethnicity
python general_mind.py -l zh -c Religion
python general_mind.py -l zh -c SES
python general_mind.py -l zh -c Sexual_orientation

cd ../memory_deception_discriminative

python memory_deception.py -l zh -c Age
python memory_deception.py -l zh -c Disability_status
python memory_deception.py -l zh -c Gender_identity
python memory_deception.py -l zh -c Nationality
python memory_deception.py -l zh -c Physical_appearance
python memory_deception.py -l zh -c Race_ethnicity
python memory_deception.py -l zh -c Religion
python memory_deception.py -l zh -c SES
python memory_deception.py -l zh -c Sexual_orientation

cd ../teaching_discriminative

python teaching.py -l zh -c Age
python teaching.py -l zh -c Disability_status
python teaching.py -l zh -c Gender_identity
python teaching.py -l zh -c Nationality
python teaching.py -l zh -c Physical_appearance
python teaching.py -l zh -c Race_ethnicity
python teaching.py -l zh -c Religion
python teaching.py -l zh -c SES
python teaching.py -l zh -c Sexual_orientation