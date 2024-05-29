cwlVersion: v1.0
steps:
  read-potential-cases-disc:
    run: read-potential-cases-disc.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
      potentialCases:
        id: potentialCases
        source: potentialCases
  type-2-diabetes-diagnostic-codes-pregnancy---primary:
    run: type-2-diabetes-diagnostic-codes-pregnancy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-disc/output
  stable-type-2-diabetes-diagnostic-codes---primary:
    run: stable-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-pregnancy---primary/output
  type-2-diabetes-diagnostic-codes-nephropat---primary:
    run: type-2-diabetes-diagnostic-codes-nephropat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: stable-type-2-diabetes-diagnostic-codes---primary/output
  antidiabetic-type-2-diabetes-diagnostic-codes---primary:
    run: antidiabetic-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-nephropat---primary/output
  type-2-diabetes-diagnostic-codes-control---primary:
    run: type-2-diabetes-diagnostic-codes-control---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: antidiabetic-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-maculopath---primary:
    run: type-2-diabetes-diagnostic-codes-maculopath---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-control---primary/output
  type-2-diabetes-diagnostic-codes-indicated---primary:
    run: type-2-diabetes-diagnostic-codes-indicated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-maculopath---primary/output
  noninsulindependent-type-2-diabetes-diagnostic-codes---primary:
    run: noninsulindependent-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-indicated---primary/output
  type-2-diabetes-diagnostic-codes-advice---primary:
    run: type-2-diabetes-diagnostic-codes-advice---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: noninsulindependent-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-refer---primary:
    run: type-2-diabetes-diagnostic-codes-refer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-advice---primary/output
  type-2-diabetes-diagnostic-codes-complica---primary:
    run: type-2-diabetes-diagnostic-codes-complica---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-refer---primary/output
  type-2-diabetes-diagnostic-codes-monitor---primary:
    run: type-2-diabetes-diagnostic-codes-monitor---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-complica---primary/output
  type-2-diabetes-diagnostic-codes-gangrene---primary:
    run: type-2-diabetes-diagnostic-codes-gangrene---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-monitor---primary/output
  type-2-diabetes-diagnostic-codes-arthr---primary:
    run: type-2-diabetes-diagnostic-codes-arthr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-gangrene---primary/output
  relative-type-2-diabetes-diagnostic-codes---primary:
    run: relative-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-arthr---primary/output
  type-2-diabetes-diagnostic-codes-maturity---primary:
    run: type-2-diabetes-diagnostic-codes-maturity---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: relative-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-polyneuro---primary:
    run: type-2-diabetes-diagnostic-codes-polyneuro---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-maturity---primary/output
  type-2-diabetes-diagnostic-codes-prolif---primary:
    run: type-2-diabetes-diagnostic-codes-prolif---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-polyneuro---primary/output
  clinical-type-2-diabetes-diagnostic-codes---primary:
    run: clinical-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-prolif---primary/output
  multidisciplinary-type-2-diabetes-diagnostic-codes---primary:
    run: multidisciplinary-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: clinical-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-retinopat---primary:
    run: type-2-diabetes-diagnostic-codes-retinopat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: multidisciplinary-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-hypoglyca---primary:
    run: type-2-diabetes-diagnostic-codes-hypoglyca---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-retinopat---primary/output
  ketoacidotic-type-2-diabetes-diagnostic-codes---primary:
    run: ketoacidotic-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-hypoglyca---primary/output
  advanced-type-2-diabetes-diagnostic-codes---primary:
    run: advanced-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: ketoacidotic-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-screener---primary:
    run: type-2-diabetes-diagnostic-codes-screener---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: advanced-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-neurologi---primary:
    run: type-2-diabetes-diagnostic-codes-neurologi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-screener---primary/output
  adult-type-2-diabetes-diagnostic-codes---primary:
    run: adult-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-neurologi---primary/output
  type-2-diabetes-diagnostic-codes-ketoacidosis---primary:
    run: type-2-diabetes-diagnostic-codes-ketoacidosis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: adult-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-score---primary:
    run: type-2-diabetes-diagnostic-codes-score---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-ketoacidosis---primary/output
  type-2-diabetes-diagnostic-codes-history---primary:
    run: type-2-diabetes-diagnostic-codes-history---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-score---primary/output
  type-2-diabetes-diagnostic-codes-mellitus---primary:
    run: type-2-diabetes-diagnostic-codes-mellitus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-history---primary/output
  type-2-diabetes-diagnostic-codes-ulcerated---primary:
    run: type-2-diabetes-diagnostic-codes-ulcerated---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-mellitus---primary/output
  type-2-diabetes-diagnostic-codes-screen---primary:
    run: type-2-diabetes-diagnostic-codes-screen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-ulcerated---primary/output
  type-2-diabetes-diagnostic-codes-ophthalmi---primary:
    run: type-2-diabetes-diagnostic-codes-ophthalmi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-screen---primary/output
  type-2-diabetes-diagnostic-codes-remission---primary:
    run: type-2-diabetes-diagnostic-codes-remission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-ophthalmi---primary/output
  type-2-diabetes-diagnostic-codes-carer---primary:
    run: type-2-diabetes-diagnostic-codes-carer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-remission---primary/output
  type-2-diabetes-diagnostic-codes-information---primary:
    run: type-2-diabetes-diagnostic-codes-information---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-carer---primary/output
  digital-type-2-diabetes-diagnostic-codes---primary:
    run: digital-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-information---primary/output
  type-2-diabetes-diagnostic-codes-diabetology---primary:
    run: type-2-diabetes-diagnostic-codes-diabetology---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: digital-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-prediabete---primary:
    run: type-2-diabetes-diagnostic-codes-prediabete---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-diabetology---primary/output
  type-2-diabetes-diagnostic-codes-review---primary:
    run: type-2-diabetes-diagnostic-codes-review---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-prediabete---primary/output
  type-2-diabetes-diagnostic-codes-assessment---primary:
    run: type-2-diabetes-diagnostic-codes-assessment---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-review---primary/output
  hyperosmolar-type-2-diabetes-diagnostic-codes---primary:
    run: hyperosmolar-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-assessment---primary/output
  type-2-diabetes-diagnostic-codes-educa---primary:
    run: type-2-diabetes-diagnostic-codes-educa---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: hyperosmolar-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-admission---primary:
    run: type-2-diabetes-diagnostic-codes-admission---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-educa---primary/output
  type-2-diabetes-diagnostic-codes-erectile---primary:
    run: type-2-diabetes-diagnostic-codes-erectile---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-admission---primary/output
  retinal-type-2-diabetes-diagnostic-codes---primary:
    run: retinal-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-erectile---primary/output
  type-2-diabetes-diagnostic-codes-compliance---primary:
    run: type-2-diabetes-diagnostic-codes-compliance---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: retinal-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-amyotrophy---primary:
    run: type-2-diabetes-diagnostic-codes-amyotrophy---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-compliance---primary/output
  type-2-diabetes-diagnostic-codes-angiopat---primary:
    run: type-2-diabetes-diagnostic-codes-angiopat---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-amyotrophy---primary/output
  type-2-diabetes-diagnostic-codes-quality---primary:
    run: type-2-diabetes-diagnostic-codes-quality---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-angiopat---primary/output
  type-2-diabetes-diagnostic-codes-selfmanagement---primary:
    run: type-2-diabetes-diagnostic-codes-selfmanagement---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-quality---primary/output
  type-2-diabetes-diagnostic-codes-reaction---primary:
    run: type-2-diabetes-diagnostic-codes-reaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-selfmanagement---primary/output
  mononeuropathy-type-2-diabetes-diagnostic-codes---primary:
    run: mononeuropathy-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-reaction---primary/output
  type-2-diabetes-diagnostic-codes-followup---primary:
    run: type-2-diabetes-diagnostic-codes-followup---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: mononeuropathy-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-nondiabete---primary:
    run: type-2-diabetes-diagnostic-codes-nondiabete---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-followup---primary/output
  annual-type-2-diabetes-diagnostic-codes---primary:
    run: annual-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-nondiabete---primary/output
  type-2-diabetes-diagnostic-codes-progr---primary:
    run: type-2-diabetes-diagnostic-codes-progr---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: annual-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-wellbeing---primary:
    run: type-2-diabetes-diagnostic-codes-wellbeing---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-progr---primary/output
  painful-type-2-diabetes-diagnostic-codes---primary:
    run: painful-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-wellbeing---primary/output
  type-2-diabetes-diagnostic-codes-circulatory---primary:
    run: type-2-diabetes-diagnostic-codes-circulatory---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: painful-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-childbirth---primary:
    run: type-2-diabetes-diagnostic-codes-childbirth---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-circulatory---primary/output
  moderate-type-2-diabetes-diagnostic-codes---primary:
    run: moderate-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-childbirth---primary/output
  inactive-type-2-diabetes-diagnostic-codes---primary:
    run: inactive-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: moderate-type-2-diabetes-diagnostic-codes---primary/output
  under-type-2-diabetes-diagnostic-codes---primary:
    run: under-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: inactive-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-check---primary:
    run: type-2-diabetes-diagnostic-codes-check---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: under-type-2-diabetes-diagnostic-codes---primary/output
  special-type-2-diabetes-diagnostic-codes---primary:
    run: special-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-check---primary/output
  type-2-diabetes-diagnostic-codes-mononeuritis---primary:
    run: type-2-diabetes-diagnostic-codes-mononeuritis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: special-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-increased---primary:
    run: type-2-diabetes-diagnostic-codes-increased---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-mononeuritis---primary/output
  type-2-diabetes-diagnostic-codes-attended---primary:
    run: type-2-diabetes-diagnostic-codes-attended---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-increased---primary/output
  type-2-diabetes-diagnostic-codes-related---primary:
    run: type-2-diabetes-diagnostic-codes-related---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-attended---primary/output
  type-2-diabetes-diagnostic-codes-provision---primary:
    run: type-2-diabetes-diagnostic-codes-provision---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-related---primary/output
  patient-type-2-diabetes-diagnostic-codes---primary:
    run: patient-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-provision---primary/output
  type-2-diabetes-diagnostic-codes-satisfaction---primary:
    run: type-2-diabetes-diagnostic-codes-satisfaction---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: patient-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-manife---primary:
    run: type-2-diabetes-diagnostic-codes-manife---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-satisfaction---primary/output
  type-2-diabetes-diagnostic-codes-unspecified---primary:
    run: type-2-diabetes-diagnostic-codes-unspecified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-manife---primary/output
  type-2-diabetes-diagnostic-codes-examination---primary:
    run: type-2-diabetes-diagnostic-codes-examination---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-unspecified---primary/output
  type-2-diabetes-diagnostic-codes-interest---primary:
    run: type-2-diabetes-diagnostic-codes-interest---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-examination---primary/output
  type-2-diabetes-diagnostic-codes-given---primary:
    run: type-2-diabetes-diagnostic-codes-given---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-interest---primary/output
  type-2-diabetes-diagnostic-codes-resolved---primary:
    run: type-2-diabetes-diagnostic-codes-resolved---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-given---primary/output
  dominant-type-2-diabetes-diagnostic-codes---primary:
    run: dominant-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-resolved---primary/output
  type-2-diabetes-diagnostic-codes-excluded---primary:
    run: type-2-diabetes-diagnostic-codes-excluded---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: dominant-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-discharged---primary:
    run: type-2-diabetes-diagnostic-codes-discharged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-excluded---primary/output
  type-2-diabetes-diagnostic-codes-invite---primary:
    run: type-2-diabetes-diagnostic-codes-invite---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-discharged---primary/output
  type-2-diabetes-diagnostic-codes-gastroparesis---primary:
    run: type-2-diabetes-diagnostic-codes-gastroparesis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-invite---primary/output
  type-2-diabetes-diagnostic-codes-medication---primary:
    run: type-2-diabetes-diagnostic-codes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-gastroparesis---primary/output
  type-2-diabetes-diagnostic-codes-first---primary:
    run: type-2-diabetes-diagnostic-codes-first---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-medication---primary/output
  type-2-diabetes-diagnostic-codes-microalbu---primary:
    run: type-2-diabetes-diagnostic-codes-microalbu---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-first---primary/output
  type-2-diabetes-diagnostic-codes-proteinur---primary:
    run: type-2-diabetes-diagnostic-codes-proteinur---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-microalbu---primary/output
  type-2-diabetes-diagnostic-codes-preconception---primary:
    run: type-2-diabetes-diagnostic-codes-preconception---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-proteinur---primary/output
  type-2-diabetes-diagnostic-codes-month---primary:
    run: type-2-diabetes-diagnostic-codes-month---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-preconception---primary/output
  type-2-diabetes-diagnostic-codes-informed---primary:
    run: type-2-diabetes-diagnostic-codes-informed---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-month---primary/output
  type-2-diabetes-diagnostic-codes-background---primary:
    run: type-2-diabetes-diagnostic-codes-background---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-informed---primary/output
  type-2-diabetes-diagnostic-codes-injection---primary:
    run: type-2-diabetes-diagnostic-codes-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-background---primary/output
  type-2-diabetes-diagnostic-codes-driving---primary:
    run: type-2-diabetes-diagnostic-codes-driving---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-injection---primary/output
  type-2-diabetes-diagnostic-codes-audit---primary:
    run: type-2-diabetes-diagnostic-codes-audit---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-driving---primary/output
  renal-type-2-diabetes-diagnostic-codes---primary:
    run: renal-type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-audit---primary/output
  type-2-diabetes-diagnostic-codes---primary:
    run: type-2-diabetes-diagnostic-codes---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: renal-type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-counselling---primary:
    run: type-2-diabetes-diagnostic-codes-counselling---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes---primary/output
  type-2-diabetes-diagnostic-codes-preexisting---primary:
    run: type-2-diabetes-diagnostic-codes-preexisting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-counselling---primary/output
  type-2-diabetes-diagnostic-codes-record---primary:
    run: type-2-diabetes-diagnostic-codes-record---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-preexisting---primary/output
  type-2-diabetes-diagnostic-codes-default---primary:
    run: type-2-diabetes-diagnostic-codes-default---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-record---primary/output
  type-2-diabetes-diagnostic-codes-state---primary:
    run: type-2-diabetes-diagnostic-codes-state---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-default---primary/output
  type-2-diabetes-diagnostic-codes-administration---primary:
    run: type-2-diabetes-diagnostic-codes-administration---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-state---primary/output
  type-2-diabetes-diagnostic-codes-invitation---primary:
    run: type-2-diabetes-diagnostic-codes-invitation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-administration---primary/output
  type-2-diabetes-diagnostic-codes-mention---primary:
    run: type-2-diabetes-diagnostic-codes-mention---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-invitation---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: type-2-diabetes-diagnostic-codes-mention---primary/output
class: Workflow
inputs:
  potentialCases:
    id: potentialCases
    doc: Input of potential cases for processing
    type: File
  inputModule1:
    id: inputModule1
    doc: Python implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
