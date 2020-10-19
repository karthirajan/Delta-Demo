#Author: karthick@kripya.com
@Selenium @UpdateConfiguration
Feature: Configuration and Setup

@Browser1
  Scenario Outline: Style type  creation
    Given User launches centric application
    And User Click on setup icon
    When User creates style type "<StyleTypeA>","<StyleTypeB>","<StyleTypeC>","<StyleTypeD>"
    And User fill the style type attributes fields


    Examples: 
      | StyleTypeA               | StyleTypeB               | StyleTypeC          | StyleTypeD                      |
      | Apparel - Color and Size | Accessories - Only Color | Apparel - Only Size | Accessories - No color and Size |

  #-----------------------------------------------------------------------------------------------------------------
 @Browser2
  Scenario Outline: Material type creation
    Given User launches centric application
    And User Click on setup icon
    And User creates material type "<Standalone>","<Structurecomponent>","<Tool>"

    Examples: 
      | Standalone          | Structurecomponent           | Tool          |
      | Fabric - Stanadlone | Fabric - Structure Component | Fabric - Tool |

  #-----------------------------------------------------------------------------------------------------------------
 @Browser2
  Scenario Outline: BOM creation
    # Given User launches centric application
    And User Click on setup icon
    And User creates BOM type "<StyleBOM>","<MaterialBOM>"

    Examples: 
      | StyleBOM    | MaterialBOM  |
      | Apparel BOM | Material BOM |

  #-----------------------------------------------------------------------------------------------------------------
 @Browser1
  Scenario Outline: Size Chart creation
    #  Given User launches centric application
    And User Click on setup icon
    And User creates size chart type "<All>","<List>","<Values>","<Tolerance>"

    Examples: 
      | All         | List              | Values         | Tolerance         |
      | SC-Lock All | SC-Lock Dimension | SC-Lock Values | SC-Lock Tolerance |

  #-----------------------------------------------------------------------------------------------------------------
 @Browser2
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
 @Browser1
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
 @Browser3
  Scenario Outline: Inspection type creation
    Given User launches centric application
    And User Click on setup icon
    And User creates inspection type "<InspnoLink>","<BOM>","<SizeChart>","<SpecDS>","<StyleReview>"

    Examples: 
      | InspnoLink          | BOM             | SizeChart              | SpecDS                      | StyleReview              |
      | Ins Section-No Link | Ins Section-BOM | Ins Section-Size Chart | Ins Section-Spec Data Sheet | Ins Section-Style Review |

  #-----------------------------------------------------------------------------------------------------------------
 @Browser3
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
 @Browser4
  Scenario Outline: Look up items creation
    Given User launches centric application
    And User Click on setup icon
    And User creates LookUp items "<LookUpA>","<LookUpB>","<LookUpC>"

    Examples: 
      | LookUpA      | LookUpB          | LookUpC              |
      | Cost Factors | Holiday Calendar | User Task Lead Times |

  #-----------------------------------------------------------------------------------------------------------------
  @Browser4
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

  Scenario: Update Configuration
    # Given User launches centric application
    And User Click on setup icon
    Then User click on update cnfiguration
    Then Logout from the Application
#-----------------------------------------------------------------------------------------------------------------
