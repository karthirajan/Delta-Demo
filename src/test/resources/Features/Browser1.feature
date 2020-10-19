#Author: karthick@kripya.com
@Selenium @UpdateConfiguration @Browser1
Feature: Configuration and Setup


 @BOMSetup
  Scenario Outline: BOM creation
     Given User launches centric application
    And User Click on setup icon
    And User creates BOM type "<StyleBOM>","<MaterialBOM>"

    Examples: 
      | StyleBOM    | MaterialBOM  |
      | Apparel BOM | Material BOM |

  #-----------------------------------------------------------------------------------------------------------------
  @SizeSetup
  Scenario Outline: Size Chart creation
    #  Given User launches centric application
    And User Click on setup icon
    And User creates size chart type "<All>","<List>","<Values>","<Tolerance>"

    Examples: 
      | All         | List              | Values         | Tolerance         |
      | SC-Lock All | SC-Lock Dimension | SC-Lock Values | SC-Lock Tolerance |

  #-----------------------------------------------------------------------------------------------------------------
  @SpecSetup
  Scenario Outline: Spec type creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates spec type "<SpecTypeA>","<SpecTypeB>"
    And User Click on setup icon
    Then User click on update cnfiguration

    Examples: 
      | SpecTypeA    | SpecTypeB    |
      | Spec Type-01 | Spec Type-02 |

  #-----------------------------------------------------------------------------------------------------------------
 @TestSetup
  Scenario Outline: Test type creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates test type "<TestTypeA>","<TestTypeB>","<TestTypeC>"
    And User performing delete action
    And User Click on setup icon
    Then User click on update cnfiguration

    Examples: 
      | TestTypeA | TestTypeB     | TestTypeC    |
      | Wash Test | Chemical Test | Ironing Test |

  #-----------------------------------------------------------------------------------------------------------------
 @InspectionSetup
  Scenario Outline: Inspection type creation
   # Given User launches centric application
    And User Click on setup icon
    And User creates inspection type "<InspnoLink>","<BOM>","<SizeChart>","<SpecDS>","<StyleReview>"

    Examples: 
      | InspnoLink          | BOM             | SizeChart              | SpecDS                      | StyleReview              |
      | Ins Section-No Link | Ins Section-BOM | Ins Section-Size Chart | Ins Section-Spec Data Sheet | Ins Section-Style Review |

  #-----------------------------------------------------------------------------------------------------------------
 @ContractualSetup
  Scenario Outline: Contractual documents creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates contractual documents "<ContrctAll>","<Simple>","<RA>","<HED>","<HRD>"
    And User Click on setup icon
    Then User click on update cnfiguration

    Examples: 
      | ContrctAll | Simple      | RA      | HED      | HRD      |
      | CDOC-ALL   | CDOC-simple | CDOC-RA | CDOC-HED | CDOC-HRD |

  #-----------------------------------------------------------------------------------------------------------------
 @LookUpSetup
  Scenario Outline: Look up items creation
   # Given User launches centric application
    And User Click on setup icon
    And User creates LookUp items "<LookUpA>","<LookUpB>","<LookUpC>"

    Examples: 
      | LookUpA      | LookUpB          | LookUpC              |
      | Cost Factors | Holiday Calendar | User Task Lead Times |

  #-----------------------------------------------------------------------------------------------------------------
  @ThemeSetup
  Scenario Outline: Theme Master creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates theme master "<All>","<single>","<multiple>","<AVsingle>"
    And User Click on setup icon
    Then User click on update cnfiguration

    Examples: 
      | All           | single           | multiple           | AVsingle                    |
      | TM-All Season | TM-Single Season | TM-Multiple Season | TM-Allow material variation |

  #-----------------------------------------------------------------------------------------------------------------
@UpdateConfig
  Scenario: Update Configuration
    # Given User launches centric application
    And User Click on setup icon
    Then User click on update cnfiguration
   # Then Logout from the Application
#-----------------------------------------------------------------------------------------------------------------    