# Define content for the First page
# First page allows the user to select different meals, and we
# present a datatable on the emissions of each meal and where the emissions
# come from


source("data_wrangling.R")
source("analysis.R")
library("shinythemes")

#--------------Title Page------------------------------------------------------
intro <- tabPanel(
  h3("Home"),
  h2("How much of an impact does our diet have on the enviornment?"),
  "by: Lauren, Graeme, Bryan, and Sun",
  imageOutput("group_pic"),
)

detail1 <- tabPanel(
  "What's the problem?",
  h3("What's the problem?"),
    "As greenhouse gas emissions are on the rise and global temperatures with it,
    consumers are more and more likely to make decisions based on their carbon footprint. 
    Food production and agriculture contributes to a large share of these emissions,
    so it . We have borrowed this data from Stephen Clune et al to present an app
    in which consumers can make informed decisions about their diet."
  )

detail2 <- tabPanel("Stakeholders",
                    h3("Stakeholders"),
  "The food and agriculture sector contributes a significant portion towards global emissions, 
  which indicates that all living beings are indirect stakeholders in the situation. The 
  direct stakeholders -buyers, sellers, growers, middlemen- are all directly impacted as well.
  An effect consious consumer would understand that their purchases have ramifications throughout 
  the supply chain."
)
  
detail3 <- tabPanel(
    "What is The Problem?",
    h3("What is the Problem?"),
     "As the population of the world increases and food consumption habits
     remain stagnant, the amount of preventable greenhouse gases produced
     by the food and agriculture sector becomes staggering. Superfluous
     amounts of greenhouse gases are generated due to massive food waste,
     excessive consumption of livestock, and the conversion of
     non-agricultural lands to agricultural land The extremely high
     consumption of red-meat in particular is a keystone issue. There are
     excessive inefficiencies throughout the chain of production due to
     red-meat consumption."
)

detail4 <- tabPanel("Why Does It Matter?",
                    h3("Why Does It Matter?"),
                    "The proliferation of gases will accelerate the progress towards the
     brink of disaster due to climate change. Global warming could radically
     change weather patterns, coastlines, and ultimately degrade the standard
     of living across the globe. The obvious impact of global warming would
     be a general increase in the mean temperature across the globe. This
     impact itself is very dangerous due to changes in precipitation,
     causing mass droughts and heatwaves in many areas. This would also
     lead to the rise in sea level, increase in hurricane intensity,
     and displacement along coastlines."
)

detail5 <- tabPanel("How Will It Be Addressed",
                    h3("How Will It Be Addressed"),
                    "A reduction in food waste and focusing on eating low on the food chain
     would be a necessary step towards sustainable living. A long term
     solution begins with a recognition and adaptation of the human diet,
     requiring a transition towards a largely plant-based diet with small
     allowances. A data-based analysis and clear visual approach would be
     a powerful method of promoting adoption by the general population.
     Simplicity and instructional guidance are key methods of changing
     population behavior."
)

detail6 <- tabPanel("Definitions",
    "Climate Change = A change in global or regional climate patterns, in 
  particular a change apparent from the mid to late 20th century onwards 
  and attributed largely to the increased levels of atmospheric carbon
     dioxide produced by the use of fossil fuels.",
     "Greenhouse Gas = A gas that contributes to the greenhouse effect by
     absorbing infrared radiation, e.g., carbon dioxide and chlorofluorocarbons.",
    "C02 Equivalent = A metric measure used to compare the emissions from
  various greenhouse gases on the basis of their global-warming potential
  (GWP), by converting amounts of other gases to the equivalent amount
     of carbon dioxide with the same global warming.",
)

detail7 <- tabPanel("Datasets",
                    "Greenhouse Gas Emissions Dataset(Large) provided us with tabs, receipts
     and receipt inputs. The author of this Dataset was Stephen Clune.
     He receieved by collating and analysing 369 LCA studies
     including 168 food types and 1718 GWP values.",
                    # picture of Greenhouse Gas Emissions
                    imageOutput("ghge_image"),
                    
                    h4("Freshwater Withdrawals = Refer to total water
  withdrawals, not counting evaporation losses from
     storage basins."),
                    h4("Land Usagae = The management and modification of natural environment
  or wilderness into built environment such as settlements and semi-natural 
     habitats such as arable fields, pastures, and managed woods."),
                    "Freshwater Withdrawals/Land Usage Dataset(Small) provided us with
     graphs on the Freshwater withdrawals and Land Usage. 
     The authors of this Dataset were J.Poore and T.Nemecek.",
                    # picture of Freshwater withdrawals and Land Usage
                    imageOutput("fwwlu_image")
)

about <- tabPanel(
  h3("About"),
  mainPanel(
    navlistPanel(
                 detail1, 
                 detail2,
                 detail3,
                 detail4,
                 detail5,
                 detail6,
                 detail7,
                 widths = c(2, 10)
    ),
  ),
)

#--------Conclusion Page--------------------------------------

graph_just <- tabPanel(
  "Visualization Choice",
  h3("Emissions by Meal"),
  "An abstract view of emissions based on kilograms of food is insufficent in displaying 
  the real world impacts of consumption. A much more impactful and meaninful representation
  of emissions is based on common and tangible items. A familiarity with common meals such 
  as hamburgers and pasta allow for a holistic comparison ",
  
  h3("Land and Water Use"),
  "Carbon emissions are a primary factor in the impact on the enviroment. It, however, does
  not tell the whole picture. A very important consideration, especially with regards to 
  agriculture and livestock, is the impact of the product on land and water. As living beings, 
  the impact of consumption is felt thoughout the cycle, with exponentially higher needs as
  the product moves up the food chain. ",
  
  h3("Meal Calculator"),
  "Similar to the emissions by meal, this calculator allows for a sense of familiarity for
  the user. The interactive nature of the application additionally allows for a much more
  personal and understandable experience for users. This is also very important as a stepping
  stone towards substantive change. The ability to craft meals and observe the real-world
  impact of each ingredient would allow for a value-based, considerate form of consumption.
  The meal calculator also facilitates users who are commited to the call-to-action and 
  informs their choices, allowing them to be substantive.",
)

takeaways <- tabPanel(
  "What did we Learn?",
  h3("What are the Takeaways?"),
  "One of the most glaring observations that was made during this investigation is the 
  position of a food on the food chain. There was a clear, substantive increase in the 
  average CO2 emissions of animal products compared to plants. This was especially evident 
  in the cases of large animals, such as buffalo or cows, which dominated the CO2 emissions
  with both high averages and high outliers. These food products were also significantly 
  more impact on the use of Land and Water in general. The amount of effort that must be made
  to grow a crop for the sake of using it to grow another material should not be understated. 
  An interesting feature that was discovered was that the highest outliers were often in 
  impoverished areas (in infrastructure and natural resources). Sub-saharan Africa, South Asia, 
  and Australia were often at the top of the charts. Imported goods and specialty goods, 
  such as organic or artisinal, were also more impactful in terms of emissions on average."
)

outlook <- tabPanel(
  "Outlook",
  h3("Outlook"),
  "We do not claim to be experts on the topic. We do not have the technical expertise to 
  understand the intricacies that feed into the data that we used. The broad strokes used
  to represent vast, and culturally diverse areas are simply incapable of showing all. This
  does not however, reduce the impact of the data analysis. It in fact, strengthens the point
  by demonstrating wide consensus thoughout all regions. Large, grazing mammals are simply
  worse for the enviroment. While we cannot make sweeping reccomendations, we can only hope
  that people can observe this data and use it to inform their life choices. A focus and 
  recognition of the impacts of mundane factors, such as diet, are important in maintaining a 
  value-based life."
)

conclusion <- tabPanel(
  h3("Conclusion"),
  mainPanel(
    navlistPanel(
      graph_just, 
      takeaways,
      outlook,
      widths = c(2, 10)
    ),
  ),
)

#--------First Page--------------------------------------
emissions_by_meal <- tabPanel(
  h3("Emissions by Meal"),
  titlePanel("Emissions by Meal"),
  "Calculations of the green house gas emissions from various common meals",
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "meal_select",
        label = h3("Meal Choice"),
        choices = list("Hamburger", "Salad", "Salad.With.Chicken", "Cheese.Pizza",
                       "Banana.Pancakes", "Brownies", "Brownies", "Cookies", "Pasta",
                       "Pasta.With.Chicken")
      ),
      imageOutput("meal_image"), # picture of meal
    ),
    mainPanel(
      h3(textOutput("meal_ghg_text")), #outputs the sum of ghg emissions
      dataTableOutput("meal_table") # datatable of meal
    )
  )
)

#Countries
map_page <- tabPanel(
  h3("GHG Emission Map"),
  sidebarLayout(
    sidebarPanel(
    ),
    mainPanel(
      plotOutput("bad_bar")
    )
  )
)

#Define content for the third page
page_four <- tabPanel(
  h3("Land and Water Usage"),
  titlePanel("Land and Water Usage"),
  "A comparison tool between different food products and thier impacts
  on Land and Water usage.",
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("product", h3("Choose food items:"),
                         choiceNames = productChoices,
                         choiceValues = productChoices,
                         selected = c("Poultry Meat", "Apple")
      )
    ),
    mainPanel(
      plotOutput("water"),
      hr(),
      plotOutput("land")
    )
  )
)

# Define the fourth page
recipe_input <- tabPanel(
  h3("Input your recipe"), 
  titlePanel("Input your Recipe"),
  "A tool that allows users to identify their own recipies and observe the tangible
  impact of various ingredient choices.",
  mainPanel(
    uiOutput("newIngred")
  ),
  sidebarPanel(
    h3(textOutput("user_ghg")),
    actionButton("calculate", h3("Calculate GHG Emissions")),
    actionButton("add", h3("Add Ingredient"))
  )
)

one_ingredient <- fluidRow(
  id = "ingred",
  column(6,
         selectInput(
           inputId = paste0("ingredient", 1),
           label = h3("Ingredient Choice"),
           choices = sort(global_df_ghg$Product)
         )
  ),
  column(6,
         numericInput(
           inputId = "weight",
           label = h3("Amount (kg or L)"),
           value = NA
         )
  )
)

my_ui <- navbarPage(
  theme = "bootstrap.css",
  h1("Greenhouse Emissions by Food"),
  intro,
  about,
  emissions_by_meal,
  page_four,
  recipe_input, 
  conclusion
)
