#Author: karthick@kripya.com
@Selenium @UpdateConfiguration @Browser4
Feature: Configuration and Setup

 
  @InspectionCreation
  Scenario Outline: Inspection Creation
    Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates Enumeration "<DefectsCategory>"
    When user creates setup in Inspection "<Defects>","<AccLimit>","<sortOrder>","<TestSpecification>","<SamplingValue>","<ErrorType>","<TemplateName>","<BOMName>","<SizeChart>","<DimensioName>","<InspectionGrpName>"

    Examples: 
      | Defects                                              | AccLimit                | sortOrder | TestSpecification                                   | SamplingValue         | ErrorType                 | TemplateName    | BOMName        | SizeChart   | DimensioName  | InspectionGrpName    | DefectsCategory |
      | Size Defect,Sewing Defect,Fabric Defect,Color Defect | 2.5%AQL,4.5%AQL,ACL 3.0 |     0,1,2 | No Link,BOM,Size Chart,Spec Data Sheet,Style Review | Single SP,Multiple SP | Critical,High,Check Error | auto-inspection | Inspection BOM | Ins Special | New Dimension | New Inspection Group | High,Medium,Low |

  @InspectionStyleCreation
  Scenario Outline: Inspection style creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then User creates Style for inspection "<BOMName>"
    And User creates ImageDatasheet "<ImageName>","<Description>"
    Then User creates Review and sizechart "<ReviewName>","<ReviewDesc>","<canvasNote>","<InsSize>"
    Then User creates spec "<specvalue>","<datasheet>","<specdesc>","<customspecvalue>","<specialvalue>","<Bomcopy1>","<Bomcopy2>"
    Then User creates Inspection and verify the created items in Style Specification "<InspectionName>","<Samplingvalue>","<SupplierValue>"

    Examples: 
      | BOMName | ImageName | Description              | ReviewName       | ReviewDesc               | canvasNote         | InsSize       | specvalue | datasheet          | specdesc           | customspecvalue     | specialvalue   | Bomcopy1     | Bomcopy2      | InspectionName     | Samplingvalue | SupplierValue |
      | Ins-BOM | INS-IDS   | Image Inspection Testing | Ins-Style Review | Style Inspection testing | Automation Testing | Ins-SizeChart | character | Ins-spec datasheet | Inspection Testing | Custom spec section | Characteristic | Ins-BOM COPY | Ins-BOM COPY2 | Apparel-Inspection | Single        | Supplier      |

  @InspectionContinuation
  Scenario Outline: Inspection style creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then create NewInspectionSecurityGroup "<ErrorType>","<AccLimit>","<SampleQtyMethod>","<InsBatchName>","<Attribute>","<Batchcolorway>","<BatchSize>","<Defectvalue>","<DefectCounter>"
		And User verify the PDF and InspectionBatch status
    
    
    Examples: 
      | ErrorType     | AccLimit | SampleQtyMethod   | InsBatchName     | Attribute                                            | Batchcolorway | BatchSize | Defectvalue | DefectCounter |
      | High,Critical | 2.5,4.5  | Static,Percentage | Size chart batch | Inspection Size Chart Dimension,Size Chart Dimension | Vanilla       | small     | size        |             5 |

@InspectionShipment
  Scenario Outline: Inspection shipment
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then create Inspection shipment "<ErrorType>","<ProductionQuote>","<styleInspValue>","<TemplateValue>","<ShipmentInspValue>","<Level>","<BatchShipment>","<OrderInspection>","<TemplateName>","<DefectCounter>","<DefectValue>","<BatchSize>","<Samplecount>","<OrderBatchName>"

    Examples: 
      | ErrorType     | ProductionQuote | styleInspValue   | TemplateValue | ShipmentInspValue   | Level          | BatchShipment  | OrderInspection  | TemplateName              | DefectCounter | DefectValue  | BatchSize | Samplecount | OrderBatchName  |
      | High,Critical | Supplier        | Style-Inspection | inspection    | Shipment-Inspection | Shipment,Order | Batch-shipment | Order-Inspection | order-inspection template |           1,2 | fabric,color | small     |          50 | Batch for Order |
  
  
  Scenario Outline: Shape creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates product group in size chart "<ProductGrp>","<Description>"
    And User update dimension,increments "<Increments>" and tolerance
    Then Go to homepage
    And User creates shape "Circle Shape","winter season" and update shape master "Object Shape Master"
    And User is performing copy,edit and delete action
    And User creates Security group "<SecurityGrp>" and update values under shape "MensJeans"
    And User creates shape sample "<Sample>","Supplier"
    And User is performing sample copy,edit and delete action
    And User Creates shape size chart for "Circle SC-Lock All","Circle SC-Lock Dimension","Circle SC-Lock Tolerance","Circle SC-Lock Values"
   # Then Logout from the Application

    Examples: 
      | ProductGrp | Description | Increments       | SecurityGrp            | Sample              |
      | PG - 01    | Automation  | Pants Grade Rule | Security Group - Shape | Circle Shape Sample |
  
  @BomSection
  Scenario Outline: Inspection Creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user creates NewBOMSection "<Bomstylesection>","<Stylesortvalue>","<filterName>"
    Then user Creates NewMaterialBomSection "<BomMaterialSection>","<Materialsortvalue>"

    Examples: 
      | Bomstylesection                                           | Stylesortvalue  | filterName | BomMaterialSection                        | Materialsortvalue |
      | Apparel section,fabric section,All section,Delete section | 10,12,100,50,15 | Material   | fabric section,All section,Delete section |          23,24,25 |

  @BomTemplate
  Scenario Outline: Inspection Creation
    #Given User launches centric application
    Then Go to homepage
    And verify user screen
    Then user created NewBOMTemplate "<Subtype>","<TemplateName>","<createsection>","<EditComment>"
   # Then Logout from the Application

    Examples: 
      | Subtype     | TemplateName         | createsection                     | EditComment     |
      | Apparel BOM | Apparel BOM Template | auto adhoc section,Delete section | automation test |
  
  Scenario Outline: Theme creation
   # Given User launches centric application
    Then Go to homepage
    And verify user screen
    When User creates theme for single season "TM-Single Season","Wild Theme Master","Wild Theme","winter season"
    And User creates new theme from style "<StyleSubType>","<StyleTM>"
    And User creates new theme from material "<MaterialSubType>","<MaterialTM>"
    And User creates theme for All season "TM-All Season","All season TM","All season - Theme"
    And User is performing theme copy,edit and delete action
    And User creates Security group "<SecurityGrp>" and update values under Theme "TSG"
    And User creates color inside theme "Blue Theme","White Theme","Glass Theme"
    And User creates product alternative "Italy"
    

    Examples: 
      | StyleSubType                | StyleTM            | MaterialSubType    | MaterialTM            | SecurityGrp |
      | TM-Allow material variation | Style Theme Master | TM-Multiple Season | Material Theme Master | TSG -All    |

 #-----------------------------------------------------------------------------------------------------------------
  
  Scenario Outline: Theme BOM creation and validation
   # Given User launches centric application
    And User Click on setup icon
    And User creates theme BOM type "<BOMSubType>","No Theme Lock"
    And User Click on setup icon
    Then User click on update cnfiguration
    Then Go to homepage
    When User creates new theme placement "<PlacementA>","Theme BOM Value"
    When User creates new theme placement from material
    When User creates new from theme placement
    When User creates select section and update color value "<PlacementB>","<ColorA>"
    When User creates adhoc section "<Adhoc>"
    And User is performing select,create,arrange and delete section activities under sections
    When User creates style BOM "<BOMSubType>","<BOM_Value>"
    And User creates and update style BOM placements "<BOMSubType>","<PlacementB>"
    And Validating under style placements
    Then Go to homepage
    When user updates existing style BOM "<ColorB>","<BOMSubType>" and validate style placements
    Then Go to homepage
    And User performing delete style BOM placements and validate style
    And User performing unlink and synch from theme validation
   # Then Logout from the Application

    Examples: 
      | BOMSubType | PlacementA         | PlacementB     | ColorA | ColorB | BOM_Value                | Adhoc               |
      | Theme Lock | Shoulder - placement | Neck - placement | Blue   | Red    | Apparel BOM - Theme Lock | Theme Adhoc Section |
  