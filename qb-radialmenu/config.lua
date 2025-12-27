Config = {}



Config.EnableExtraMenu = true

Config.MenuItems = {
    [1] = {
        id = 'emotes',
        title = 'Animasyonlar',
        icon = 'face-meh-blank',
        type = 'client',
        event = 'rp:RecieveMenu',
        shouldClose = true,
    },
    [2] =  
    {
        id = 'blipackapas',
        title = 'Blip Aç/Kapat',
        icon = 'map-marked-alt',
        items = {
            {
                id = 'store',
                title = 'Marketler',
                icon = 'store',
                type = 'client',
                event = 'blips:toggleMarket',
                shouldClose = true
            },
              {
                id = 'kmekan',
                title = 'Kiralık Mekanlar',
                icon = 'building',
                type = 'client',
                event = 'blips:toggleKiralik',
                shouldClose = true
            },
                          {
                id = 'kmalikane',
                title = 'Malikaneler',
                icon = 'crown',
                type = 'client',
                event = 'blips:toggleKiralikMalikane',
                shouldClose = true
            },
                                      {
                id = 'kticaret',
                title = 'Ticaret',
                icon = 'dollar-sign',
                type = 'client',
                event = 'blips:toggleTicaret',
                shouldClose = true
            },
                                                  {
                id = 'amekan',
                title = 'Mekanlar',
                icon = 'coffee',
                type = 'client',
                event = 'blips:AktifMekanlar',
                shouldClose = true
            },
            {
                id = 'garajac',
                title = 'Garajlar',
                icon = 'warehouse',
                items = {
                    {
                        id = 'garagee',
                        title = 'Garajlar',
                        icon = 'warehouse',
                        type = 'client',
                        event = 'blips:toggleGaraj',
                        shouldClose = true
                    },
                    {
                        id = 'garagebot',
                        title = 'Bot Garaj',
                        icon = 'ship',
                        type = 'client',
                        event = 'blips:toggleBot',
                        shouldClose = true
                    },
                    {
                        id = 'heligarage',
                        title = 'Heli Garaj',
                        icon = 'helicopter',
                        type = 'client',
                        event = 'blips:toggleHeli',
                        shouldClose = true
                    }
                }
            },
            {
                id = 'gasstation',
                title = 'Benzinlik',
                icon = 'gas-pump',
                type = 'client',
                event = 'blips:toggleBenzin',
                shouldClose = true
            },
            {
                id = 'barbershop',
                title = 'Berber',
                icon = 'cut',
                type = 'client',
                event = 'blips:toggleBarber',
                shouldClose = true
            },
            {
                id = 'clothing',
                title = 'Kıyafetci',
                icon = 'tshirt',
                type = 'client',
                event = 'blips:toggleClothes',
                shouldClose = true
            },
            {
                id = 'tattos',
                title = 'Dövmeci',
                icon = 'pen-fancy',
                type = 'client',
                event = 'blips:toggleTattoo',
                shouldClose = true
            },
            {
                id = 'tumblip',
                title = 'Tüm Blipler',
                icon = 'map-marker-alt',
                type = 'client',
                event = 'blips:toggleAll',
                shouldClose = true
            },
            {
                id = 'blips',
                title = 'En yakın',
                icon = 'location-arrow',
                items = {
                    {
                        id = 'barbershop_nearest',
                        title = 'Berber',
                        icon = 'cut',
                        type = 'client',
                        event = 'qb-radialmenu:client:togglebarber',
                        shouldClose = true
                    },
                    {
                        id = 'clothing_nearest',
                        title = 'Kıyafetci',
                        icon = 'tshirt',
                        type = 'client',
                        event = 'qb-radialmenu:client:toggleclothing',
                        shouldClose = true
                    },
                    {
                        id = 'store_nearest',
                        title = 'Marketler',
                        icon = 'store',
                        type = 'client',
                        event = 'qb-radialmenu:client:togglemarket',
                        shouldClose = true
                    },
                    {
                        id = 'tattos_nearest',
                        title = 'Dövmeci',
                        icon = 'paint-roller',
                        type = 'client',
                        event = 'qb-radialmenu:client:toggletattoo',
                        shouldClose = true
                    }
                }
            }
        }
    },

  --[[  {
        id = 'blips',
        title = 'En yakın',
        icon = 'location-arrow',
        items = { 
            {
            id = 'barbershop',
            title = 'Berber',
            icon = 'cut',
            type = 'client',
            event = 'qb-radialmenu:client:togglebarber',
            shouldClose = true
        }, {
            id = 'clothing',
            title = 'Kıyafetci',
            icon = 'tshirt',
            type = 'client',
            event = 'qb-radialmenu:client:toggleclothing',
            shouldClose = true
        }, {
            id = 'store',
            title = 'Marketler',
            icon = 'store',
            type = 'client',
            event = 'qb-radialmenu:client:togglemarket',
            shouldClose = true
        }, {
            id = 'tattos',
            title = 'Dövmeci',
            icon = 'paint-roller',
            type = 'client',
            event = 'qb-radialmenu:client:toggletattoo',
            shouldClose = true
        },
        
    },
    },]]
    [3] = {
        id = 'actions',
        title = 'Oyuncu İşlemleri',
        icon = 'users',
        items = {
            {
                id = 'playerinvehicle',
                title = 'Araca Bindir',
                icon = 'car-side',
                type = 'client',
                event = 'police:client:PutPlayerInVehicle',
                shouldClose = true
            }, {
                id = 'playeroutvehicle',
                title = 'Araçtan Indir',
                icon = 'car-side',
                type = 'client',
                event = 'police:client:SetPlayerOutVehicle',
                shouldClose = true
            }, {
                id = 'stealplayer',
                title = 'Soy',
                icon = 'mask',
                type = 'client',
                event = 'police:client:RobPlayer',
                shouldClose = true
            },
            {
                id = 'anahtarver',
                title = 'Anahtar Ver',
                icon = 'key',
                type = 'client',
                event = 'qb-vehiclekeys:client:GiveKeys',
                shouldClose = true
            },
            {
                id = 'kucakbenikucakk',
                title = 'Kucakla',
                icon = 'people-carry',
                type = 'command',
                event = 'kucakla',
                shouldClose = true
            },
            {
                id = 'belgeislemleri',
                title = 'Belge İşlemleri',
                icon = 'file-alt',
                items = {
                    {
                        id = 'showid',
                        title = 'Kimlik Göster',
                        icon = 'id-card',
                        type = 'server',
                        event = 'jsfour-idcard:openKimlik',
                        shouldClose = true
                    },
                    {
                        id = 'showlicense',
                        title = 'Ehliyet Göster',
                        icon = 'id-badge',
                        type = 'server',
                        event = 'jsfour-idcard:openEhliyet',
                        shouldClose = true
                    },
                    {
                        id = 'showid2',
                        title = 'Kimliğine Bak',
                        icon = 'id-card',
                        type = 'server',
                        event = 'jsfour-idcard:openKimlikSelf',
                        shouldClose = true
                    },
                    
                    {
                        id = 'showlicense2',
                        title = 'Ehliyetine Bak',
                        icon = 'id-badge',
                        type = 'server',
                        event = 'jsfour-idcard:openEhliyetSelf',
                        shouldClose = true
                    },
                }
            }
            --  {
            --     id = 'escort',
            --     title = 'Kidnap',
            --     icon = 'user-friends',
            --     type = 'client',
            --     event = 'police:client:KidnapPlayer',
            --     shouldClose = true
            -- }, {
            --     id = 'escort2',
            --     title = 'Escort',
            --     icon = 'user-friends',
            --     type = 'client',
            --     event = 'police:client:EscortPlayer',
            --     shouldClose = true
            -- }          
        }
    },
    -- [4] = {
    --     id = 'kıyafetcıkar',
    --     title = 'Kıyafetler',
    --     icon = 'tshirt',
    --     type = 'client',
    --     event = 'dpc:ToggleMenu',
    --     shouldClose = true,
    -- },
     [4] = {
        id = 'clothesmenu',
        title = 'Kıyafet',
        icon = 'tshirt',
        items = {
            {
                id = 'Hair',
                title = 'Saç',
                icon = 'user',
                type = 'client',
                event = 'qb-radialmenu:ToggleClothing',
                shouldClose = true
            }, {
            id = 'Ear',
            title = 'Kulak',
            icon = 'deaf',
            type = 'client',
            event = 'qb-radialmenu:ToggleProps',
            shouldClose = true
        }, {
            id = 'Neck',
            title = 'Boyun',
            icon = 'user-tie',
            type = 'client',
            event = 'qb-radialmenu:ToggleClothing',
            shouldClose = true
        }, {
            id = 'Top',
            title = 'Ceket',
            icon = 'tshirt',
            type = 'client',
            event = 'qb-radialmenu:ToggleClothing',
            shouldClose = true
        }, {
            id = 'Shirt',
            title = 'Tişört',
            icon = 'tshirt',
            type = 'client',
            event = 'qb-radialmenu:ToggleClothing',
            shouldClose = true
        }, {
            id = 'Pants',
            title = 'Pantolon',
            icon = 'user',
            type = 'client',
            event = 'qb-radialmenu:ToggleClothing',
            shouldClose = true
        }, {
            id = 'Shoes',
            title = 'Ayakkabı',
            icon = 'shoe-prints',
            type = 'client',
            event = 'qb-radialmenu:ToggleClothing',
            shouldClose = true
        }, {
            id = 'meer',
            title = 'Ekstra',
            icon = 'plus',
            items = {
                {
                    id = 'Hat',
                    title = 'Şapka',
                    icon = 'hat-cowboy-side',
                    type = 'client',
                    event = 'qb-radialmenu:ToggleProps',
                    shouldClose = true
                }, {
                id = 'Glasses',
                title = 'Gözlük',
                icon = 'glasses',
                type = 'client',
                event = 'qb-radialmenu:ToggleProps',
                shouldClose = true
            }, {
                id = 'Visor',
                title = 'Kask',
                icon = 'hat-cowboy-side',
                type = 'client',
                event = 'qb-radialmenu:ToggleProps',
                shouldClose = true
            }, {
                id = 'Mask',
                title = 'Maske',
                icon = 'mask',
                type = 'client',
                event = 'qb-radialmenu:ToggleClothing',
                shouldClose = true
            }, {
                id = 'Vest',
                title = 'Zırh',
                icon = 'vest',
                type = 'client',
                event = 'qb-radialmenu:ToggleClothing',
                shouldClose = true
            }, {
                id = 'Bag',
                title = 'Çanta',
                icon = 'shopping-bag',
                type = 'client',
                event = 'qb-radialmenu:ToggleClothing',
                shouldClose = true
            }, {
                id = 'Bracelet',
                title = 'Bilezik',
                icon = 'user',
                type = 'client',
                event = 'qb-radialmenu:ToggleProps',
                shouldClose = true
            }, {
                id = 'Watch',
                title = 'Saat',
                icon = 'stopwatch',
                type = 'client',
                event = 'qb-radialmenu:ToggleProps',
                shouldClose = true
            }, {
                id = 'Gloves',
                title = 'Eldiven',
                icon = 'mitten',
                type = 'client',
                event = 'qb-radialmenu:ToggleClothing',
                shouldClose = true
                 },
            }
        } 
     },
 },
--[[[4] = {
                            id = 'zyozel',
                            title = 'Lost Özel',
                            icon = 'store',
                            items = {
                                {
                                    id = 'zyozel1',
                                    title = 'PlayTime',
                                    icon = 'store',
                                    type = 'command',
                                    event = 'playtimeShop',
                                    shouldClose = true
                                },
                                {
                                    id = 'zyozel2',
                                    title = 'VIP SYSTEM',
                                    icon = 'store',
                                    type = 'command',
                                    event = 'donate',
                                    shouldClose = true
                                }
                            }
                             },]]
                          

    [5] = {
        id = 'general',
        title = 'Genel',
        icon = 'globe-europe',
        items = {
           
            -- {
            --                 id = 'zyozel',
            --                 title = 'Lost Özel',
            --                 icon = 'plus',
            --                 items = {
            --                     {
            --                         id = 'zyozel1',
            --                         title = 'PlayTime',
            --                         icon = 'store',
            --                         type = 'command',
            --                         event = 'playtimeShop',
            --                         shouldClose = true
            --                     },
            --                     {
            --                         id = 'zyozel2',
            --                         title = 'VIP SYSTEM',
            --                         icon = 'store',
            --                         type = 'command',
            --                         event = 'zydonate',
            --                         shouldClose = true
            --                     }
            --                 }
            --                  },
            -- {
            --     id = 'house',
            --     title = 'House Options',
            --     icon = 'home',
            --     items = {
            --         {
            --             id = 'givehousekey',
            --             title = 'Give Keys',
            --             icon = 'key',
            --             type = 'client',
            --             event = 'qb-houses:client:giveHouseKey',
            --             shouldClose = true,
            --             items = {}
            --         }, {
            --             id = 'removehousekey',
            --             title = 'Remove Keys',
            --             icon = 'key',
            --             type = 'client',
            --             event = 'qb-houses:client:removeHouseKey',
            --             shouldClose = true,
            --             items = {}
            --         }, {
            --             id = 'togglelock',
            --             title = 'Toggle Doorlock',
            --             icon = 'door-closed',
            --             type = 'client',
            --             event = 'qb-houses:client:toggleDoorlock',
            --             shouldClose = true
            --         }, {
            --             id = 'decoratehouse',
            --             title = 'Decorate',
            --             icon = 'boxes',
            --             type = 'client',
            --             event = 'qb-houses:client:decorate',
            --             shouldClose = true
            --         }, {
            --             id = 'houseLocations',
            --             title = 'Locations',
            --             icon = 'home',
            --             items = {
            --                 {
            --                     id = 'setstash',
            --                     title = 'Set Stash',
            --                     icon = 'box-open',
            --                     type = 'client',
            --                     event = 'qb-houses:client:setLocation',
            --                     shouldClose = true
            --                 }, {
            --                     id = 'setoutift',
            --                     title = 'Set Wardrobe',
            --                     icon = 'tshirt',
            --                     type = 'client',
            --                     event = 'qb-houses:client:setLocation',
            --                     shouldClose = true
            --                 }, {
            --                     id = 'setlogout',
            --                     title = 'Set Logout',
            --                     icon = 'door-open',
            --                     type = 'client',
            --                     event = 'qb-houses:client:setLocation',
            --                     shouldClose = true
            --                 }
            --             }
            --         }
            --     }
            -- }, 
            -- {
            --     id = 'givenum',
            --     title = 'Airdrop',
            --     icon = 'share',
            --     type = 'client',
            --     event = 'high_phone:shareContactDetails',
            --     shouldClose = true
            -- },
            {
                id = 'sahneolustur',
                title = 'Sahne Oluştur',
                icon = 'bars',
                type = 'command',
                event = 'sahneolustur',
                shouldClose = true
            },{
                id = 'sahnesil',
                title = 'Sahne Sil',
                icon = 'bars',
                type = 'command',
                event = 'sahnesil',
                shouldClose = true
            },{
                id = 'odenmemısfatura',
                title = 'Ödenmemiş Faturalar',
                icon = 'file-invoice',
                type = 'client',
                event = 'g-billing:client:engageChooseYourBillsViewMenu',
                shouldClose = true
            },{
                id = 'araccevirrrbeya',
                title = 'Aracı Çevir',
                icon = 'car-crash',
                type = 'client',
                event = 'flipVehicle',
                shouldClose = true
            },  {
                id = 'getintrunk',
                title = 'Bagaja Gir',
                icon = 'car',
                type = 'client',
                event = 'qb-trunk:client:GetIn',
                shouldClose = true
            }
        }
    },
}




Config.JobInteractions = {
    ["ambulance"] = {
        {
            id = 'statuscheck',
            title = 'Sağlık Durumunu Kontrol Et',
            icon = 'heartbeat',
            type = 'client',
            event = 'hospital:client:CheckStatus',
            shouldClose = true
        },{
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },{
            id = 'revivep',
            title = 'Canlandır',
            icon = 'user-md',
            type = 'client',
            event = 'hospital:client:RevivePlayer',
            shouldClose = true
        },{
            id = 'treatwounds',
            title = 'Yaraları iyileştir',
            icon = 'band-aid',
            type = 'client',
            event = 'hospital:client:TreatWounds',
            shouldClose = true
        }, {
            id = 'emergencybutton2',
            title = 'Acil Durum Butonu',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        }, {
            id = 'emstası',
            title = 'Taşı',
            icon = 'user-friends',
            type = 'command',
            event = 'taşı',
            shouldClose = true
        }, {
            id = 'stretcheroptions',
            title = 'Sedye',
            icon = 'procedures',
            items = {
                {
                    id = 'spawnstretcher',
                    title = 'Sedye Spawn',
                    icon = 'plus',
                    type = 'client',
                    event = 'qb-radialmenu:client:TakeStretcher',
                    shouldClose = false
                }, {
                    id = 'despawnstretcher',
                    title = 'Sedye Sil',
                    icon = 'minus',
                    type = 'client',
                    event = 'qb-radialmenu:client:RemoveStretcher',
                    shouldClose = false
                }
            }
        }
    },
    ["taxi"] = {
        {
            id = 'togglemeter',
            title = 'Taxi Metre Göster/Gizle ',
            icon = 'eye-slash',
            type = 'client',
            event = 'qb-taxi:client:toggleMeter',
            shouldClose = false
        }, {
            id = 'togglemouse',
            title = 'Taxi Metre Aç/Kapat',
            icon = 'hourglass-start',
            type = 'client',
            event = 'qb-taxi:client:enableMeter',
            shouldClose = true
        }, {
            id = 'npc_mission',
            title = 'NPC Görevi',
            icon = 'taxi',
            type = 'client',
            event = 'qb-taxi:client:DoTaxiNpc',
            shouldClose = true
        }
    },
    ["tow"] = {
        {
            id = 'togglenpc',
            title = 'NPC Görevi',
            icon = 'toggle-on',
            type = 'client',
            event = 'jobs:client:ToggleNpc',
            shouldClose = true
        }, {
            id = 'towvehicle',
            title = 'Araç Çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        }
    },
    ["mechanic"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-mechanic:client:cleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-mechanic:client:repairVehicle',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
        
    },
    ["mekanik1"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-mechanic:client:cleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-mechanic:client:repairVehicle',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
    },
    
    ["mekanik2"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-mechanic:client:cleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-mechanic:client:repairVehicle',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
    },
    
    ["mekanik3"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-mechanic:client:cleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-mechanic:client:repairVehicle',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
    },
    
    ["mekanik4"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-mechanic:client:cleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-mechanic:client:repairVehicle',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
    },
    
    ["mekanik5"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-mechanic:client:cleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-mechanic:client:repairVehicle',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
    },
    
    ["mekanik6"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-mechanic:client:cleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-mechanic:client:repairVehicle',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
    },
    
    ["cardealer"] = {
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        },
        {
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        },
    },
    ["bennysmechanic"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["lscustomhava"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["ottoautos"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["imekanik"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["bennyscustoms"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["lscustom2"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["hayesmechanic"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["domesticmechanic"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["sahilmekanik"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["tunersmechanic"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["harmonymechanic"] = {
        {
            id = 'towvehicle',
            title = 'Çekiciyle araç çek',
            icon = 'truck-pickup',
            type = 'client',
            event = 'qb-tow:client:TowVehicle',
            shouldClose = true
        },
        {
            id = 'cleanvehicle',
            title = 'Aracı Temizle',
            icon = 'hands-wash',
            type = 'client',
            event = 'qb-vehiclefailure:client:CleanVehicle',
            shouldClose = true
        },
        {
            id = 'repairvehicle',
            title = 'Aracı Tamir Et',
            icon = 'car-crash',
            type = 'client',
            event = 'qb-vehiclefailure:client:RepairVehicleFull',
            shouldClose = true
        }
    },
    ["police"] = {
       --[[ {
            id = 'resethouse',
            title = 'Ev Kilidini Resetle',
            icon = 'key',
            type = 'client',
            event = 'qb-houses:client:ResetHouse',
            shouldClose = true
        },]]
        {
            id = 'emergencybutton3',
            title = 'Acil Durum Butonu',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        },{
            id = 'impound',
            title = 'Aracı Çek',
            icon = 'car-crash',
            type = 'client',
            event = 'polis:impound',
            shouldClose = true
        }, {
            id = 'kilitkır',
            title = 'Kilit Kır',
            icon = 'key',
            type = 'client',
            event = 'qb-police:client:unlockVehicle',
            shouldClose = true
        },{
            id = 'mdt',
            title = 'Polis Tableti',
            icon = 'tablet',
            type = 'command',
            event = 'mdt',
            shouldClose = true
        }, {
            id = 'playerinvehicle',
            title = 'Yaralı İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:ybindir',
            shouldClose = true
        },{
            id = 'playerinvehicle',
            title = 'Kelepçeli İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:arac',
            shouldClose = true
        },{
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Lisans Kontrol',
            icon = 'id-card',
            type = 'command',
            event = 'lisanskontrolyakın',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Polis Eylemleri',
            icon = 'bars',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Sağlığı Kontrol Et',
                    icon = 'heartbeat',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                },{
                    id = 'showidpd',
                    title = 'Polis Kimlik Göster',
                    icon = 'id-card',
                    type = 'client',
                    event = 'jsfour-idcard:openPd',
                    shouldClose = true
                },{
                    id = 'faturavercano',
                    title = 'Ödenmemiş Fatura',
                    icon = 'file-invoice',
                    type = 'client',
                    event = 'g-billing:client:engageChooseYourBillsViewMenu',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = 'GSR Testi',
                    icon = 'dna',
                    type = 'command',
                    event = 'gsr',
                    shouldClose = true
                }, {
                    id = 'pdtası',
                    title = 'Taşı',
                    icon = 'user-friends',
                    type = 'client',
                    event = 'nko-kelepce:client:tasi',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Üst Ara',
                    icon = 'search',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                },
                --  {
                --     id = 'jailplayer',
                --     title = 'Hapise Gönder',
                --     icon = 'user-lock',
                --     type = 'client',
                --     event = 'police:client:JailPlayer',
                --     shouldClose = true
                -- },
                {
                    id = 'jailplayer',
                    title = 'Hapise Gönder',
                    icon = 'user-lock',
                    type = 'command',
                    event = 'hapis',
                    shouldClose = true
                },
                --  {
                --     id = 'kamuver',
                --     title = 'Kamu Ver',
                --     icon = 'user-lock',
                --     type = 'client',
                --     event = 'qb-communityservice:sendToCommunityService',
                --     shouldClose = true
                -- },
                {
                    id = 'gpsac',
                    title = 'GPS Aç',
                    icon = 'road',
                    type = 'command',
                    event = 'gpsac',
                    shouldClose = true
                },
                {
                    id = 'gpskapa',
                    title = 'GPS Kapat',
                    icon = 'road',
                    type = 'command',
                    event = 'gpskapat',
                    shouldClose = true
                }
            }
        }, {
            id = 'policeobjects',
            title = 'Objeler',
            icon = 'road',
            items = {
                {
                    id = 'spawnpion',
                    title = 'Koni',
                    icon = 'exclamation-triangle',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawnhek',
                    title = 'Bariyer',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnschotten',
                    title = 'Hız Limiti Tabelası',
                    icon = 'sign',
                    type = 'client',
                    event = 'police:client:spawnRoadSign',
                    shouldClose = false
                }, {
                    id = 'spawntent',
                    title = 'Çadır',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting',
                    title = 'Işık',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                }, {
                    id = 'spikestrip',
                    title = 'Dikenli Tel',
                    icon = 'caret-up',
                    type = 'client',
                    event = 'police:client:SpawnSpikeStrip',
                    shouldClose = false
                }, {
                    id = 'deleteobject',
                    title = 'Obje Sil',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }
            }
        }
    },
    ["sheriff"] = {
        {
            id = 'emergencybutton3',
            title = 'Acil Durum Butonu',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        },{
            id = 'impound',
            title = 'Aracı Çek',
            icon = 'car-crash',
            type = 'client',
            event = 'polis:impound',
            shouldClose = true
        }, {
            id = 'kilitkır',
            title = 'Kilit Kır',
            icon = 'key',
            type = 'client',
            event = 'qb-police:client:unlockVehicle',
            shouldClose = true
        },{
            id = 'mdt',
            title = 'Polis Tableti',
            icon = 'tablet',
            type = 'command',
            event = 'mdt',
            shouldClose = true
        }, {
            id = 'playerinvehicle',
            title = 'Yaralı İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:ybindir',
            shouldClose = true
        },{
            id = 'playerinvehicle',
            title = 'Kelepçeli İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:arac',
            shouldClose = true
        },{
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Lisans Kontrol',
            icon = 'id-card',
            type = 'command',
            event = 'lisanskontrol',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Polis Eylemleri',
            icon = 'bars',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Sağlığı Kontrol Et',
                    icon = 'heartbeat',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                },{
                    id = 'showidpd',
                    title = 'Polis Kimlik Göster',
                    icon = 'id-card',
                    type = 'client',
                    event = 'jsfour-idcard:openPd',
                    shouldClose = true
                },{
                    id = 'faturavercano',
                    title = 'Ödenmemiş Fatura',
                    icon = 'file-invoice',
                    type = 'client',
                    event = 'g-billing:client:engageChooseYourBillsViewMenu',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = 'GSR Testi',
                    icon = 'dna',
                    type = 'command',
                    event = 'gsr',
                    shouldClose = true
                }, {
                    id = 'pdtası',
                    title = 'Taşı',
                    icon = 'user-friends',
                    type = 'client',
                    event = 'nko-kelepce:client:tasi',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Üst Ara',
                    icon = 'search',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = 'Hapise Gönder',
                    icon = 'user-lock',
                    type = 'command',
                    event = 'jail',
                    shouldClose = true
                }, {
                    id = 'gpsac',
                    title = 'GPS Aç',
                    icon = 'road',
                    type = 'command',
                    event = 'gpsac',
                    shouldClose = true
                }, {
                    id = 'gpskapa',
                    title = 'GPS Kapat',
                    icon = 'road',
                    type = 'command',
                    event = 'gpskapat',
                    shouldClose = true
                }
            }
        }, {
            id = 'policeobjects',
            title = 'Objeler',
            icon = 'road',
            items = {
                {
                    id = 'spawnpion',
                    title = 'Koni',
                    icon = 'exclamation-triangle',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawnhek',
                    title = 'Bariyer',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnschotten',
                    title = 'Hız Limiti Tabelası',
                    icon = 'sign',
                    type = 'client',
                    event = 'police:client:spawnRoadSign',
                    shouldClose = false
                }, {
                    id = 'spawntent',
                    title = 'Çadır',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting',
                    title = 'Işık',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                }, {
                    id = 'spikestrip',
                    title = 'Dikenli Tel',
                    icon = 'caret-up',
                    type = 'client',
                    event = 'police:client:SpawnSpikeStrip',
                    shouldClose = false
                }, {
                    id = 'deleteobject',
                    title = 'Obje Sil',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }
            }
        }
    },
    
    ["davis"] = {
        {
            id = 'emergencybutton3',
            title = 'Acil Durum Butonu',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        },{
            id = 'impound',
            title = 'Aracı Çek',
            icon = 'car-crash',
            type = 'client',
            event = 'polis:impound',
            shouldClose = true
        }, {
            id = 'kilitkır',
            title = 'Kilit Kır',
            icon = 'key',
            type = 'client',
            event = 'qb-police:client:unlockVehicle',
            shouldClose = true
        },{
            id = 'mdt',
            title = 'Polis Tableti',
            icon = 'tablet',
            type = 'command',
            event = 'mdt',
            shouldClose = true
        }, {
            id = 'playerinvehicle',
            title = 'Yaralı İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:ybindir',
            shouldClose = true
        },{
            id = 'playerinvehicle',
            title = 'Kelepçeli İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:arac',
            shouldClose = true
        },{
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Lisans Sil',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Polis Eylemleri',
            icon = 'bars',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Sağlığı Kontrol Et',
                    icon = 'heartbeat',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                },{
                    id = 'showidpd',
                    title = 'Polis Kimlik Göster',
                    icon = 'id-card',
                    type = 'client',
                    event = 'jsfour-idcard:openPd',
                    shouldClose = true
                },{
                    id = 'faturavercano',
                    title = 'Ödenmemiş Fatura',
                    icon = 'file-invoice',
                    type = 'client',
                    event = 'g-billing:client:engageChooseYourBillsViewMenu',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = 'GSR Testi',
                    icon = 'dna',
                    type = 'command',
                    event = 'gsr',
                    shouldClose = true
                }, {
                    id = 'pdtası',
                    title = 'Taşı',
                    icon = 'user-friends',
                    type = 'client',
                    event = 'nko-kelepce:client:tasi',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Üst Ara',
                    icon = 'search',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = 'Hapise Gönder',
                    icon = 'user-lock',
                    type = 'command',
                    event = 'jail',
                    shouldClose = true
                }, {
                    id = 'gpsac',
                    title = 'GPS Aç',
                    icon = 'road',
                    type = 'command',
                    event = 'gpsac',
                    shouldClose = true
                }, {
                    id = 'gpskapa',
                    title = 'GPS Kapat',
                    icon = 'road',
                    type = 'command',
                    event = 'gpskapat',
                    shouldClose = true
                }
            }
        }, {
            id = 'policeobjects',
            title = 'Objeler',
            icon = 'road',
            items = {
                {
                    id = 'spawnpion',
                    title = 'Koni',
                    icon = 'exclamation-triangle',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawnhek',
                    title = 'Bariyer',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnschotten',
                    title = 'Hız Limiti Tabelası',
                    icon = 'sign',
                    type = 'client',
                    event = 'police:client:spawnRoadSign',
                    shouldClose = false
                }, {
                    id = 'spawntent',
                    title = 'Çadır',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting',
                    title = 'Işık',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                }, {
                    id = 'spikestrip',
                    title = 'Dikenli Tel',
                    icon = 'caret-up',
                    type = 'client',
                    event = 'police:client:SpawnSpikeStrip',
                    shouldClose = false
                }, {
                    id = 'deleteobject',
                    title = 'Obje Sil',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }
            }
        }
    },
    
    ["bsco"] = {
        {
            id = 'emergencybutton3',
            title = 'Acil Durum Butonu',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        },{
            id = 'impound',
            title = 'Aracı Çek',
            icon = 'car-crash',
            type = 'client',
            event = 'polis:impound',
            shouldClose = true
        }, {
            id = 'kilitkır',
            title = 'Kilit Kır',
            icon = 'key',
            type = 'client',
            event = 'qb-police:client:unlockVehicle',
            shouldClose = true
        },{
            id = 'mdt',
            title = 'Polis Tableti',
            icon = 'tablet',
            type = 'command',
            event = 'mdt',
            shouldClose = true
        }, {
            id = 'playerinvehicle',
            title = 'Yaralı İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:ybindir',
            shouldClose = true
        },{
            id = 'playerinvehicle',
            title = 'Kelepçeli İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:arac',
            shouldClose = true
        },{
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Lisans Sil',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Polis Eylemleri',
            icon = 'bars',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Sağlığı Kontrol Et',
                    icon = 'heartbeat',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                },{
                    id = 'showidpd',
                    title = 'Polis Kimlik Göster',
                    icon = 'id-card',
                    type = 'client',
                    event = 'jsfour-idcard:openPd',
                    shouldClose = true
                },{
                    id = 'faturavercano',
                    title = 'Ödenmemiş Fatura',
                    icon = 'file-invoice',
                    type = 'client',
                    event = 'g-billing:client:engageChooseYourBillsViewMenu',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = 'GSR Testi',
                    icon = 'dna',
                    type = 'command',
                    event = 'gsr',
                    shouldClose = true
                }, {
                    id = 'pdtası',
                    title = 'Taşı',
                    icon = 'user-friends',
                    type = 'client',
                    event = 'nko-kelepce:client:tasi',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Üst Ara',
                    icon = 'search',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = 'Hapise Gönder',
                    icon = 'user-lock',
                    type = 'command',
                    event = 'jail',
                    shouldClose = true
                }, {
                    id = 'gpsac',
                    title = 'GPS Aç',
                    icon = 'road',
                    type = 'command',
                    event = 'gpsac',
                    shouldClose = true
                }, {
                    id = 'gpskapa',
                    title = 'GPS Kapat',
                    icon = 'road',
                    type = 'command',
                    event = 'gpskapat',
                    shouldClose = true
                }
            }
        }, {
            id = 'policeobjects',
            title = 'Objeler',
            icon = 'road',
            items = {
                {
                    id = 'spawnpion',
                    title = 'Koni',
                    icon = 'exclamation-triangle',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawnhek',
                    title = 'Bariyer',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnschotten',
                    title = 'Hız Limiti Tabelası',
                    icon = 'sign',
                    type = 'client',
                    event = 'police:client:spawnRoadSign',
                    shouldClose = false
                }, {
                    id = 'spawntent',
                    title = 'Çadır',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting',
                    title = 'Işık',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                }, {
                    id = 'spikestrip',
                    title = 'Dikenli Tel',
                    icon = 'caret-up',
                    type = 'client',
                    event = 'police:client:SpawnSpikeStrip',
                    shouldClose = false
                }, {
                    id = 'deleteobject',
                    title = 'Obje Sil',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }
            }
        }
    },
    
    ["ranger"] = {
        {
            id = 'emergencybutton3',
            title = 'Acil Durum Butonu',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        },{
            id = 'impound',
            title = 'Aracı Çek',
            icon = 'car-crash',
            type = 'client',
            event = 'polis:impound',
            shouldClose = true
        }, {
            id = 'kilitkır',
            title = 'Kilit Kır',
            icon = 'key',
            type = 'client',
            event = 'qb-police:client:unlockVehicle',
            shouldClose = true
        },{
            id = 'mdt',
            title = 'Polis Tableti',
            icon = 'tablet',
            type = 'command',
            event = 'mdt',
            shouldClose = true
        }, {
            id = 'playerinvehicle',
            title = 'Yaralı İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:ybindir',
            shouldClose = true
        },{
            id = 'playerinvehicle',
            title = 'Kelepçeli İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:arac',
            shouldClose = true
        },{
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Lisans Sil',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Polis Eylemleri',
            icon = 'bars',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Sağlığı Kontrol Et',
                    icon = 'heartbeat',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                },{
                    id = 'showidpd',
                    title = 'Polis Kimlik Göster',
                    icon = 'id-card',
                    type = 'client',
                    event = 'jsfour-idcard:openPd',
                    shouldClose = true
                },{
                    id = 'faturavercano',
                    title = 'Ödenmemiş Fatura',
                    icon = 'file-invoice',
                    type = 'client',
                    event = 'g-billing:client:engageChooseYourBillsViewMenu',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = 'GSR Testi',
                    icon = 'dna',
                    type = 'command',
                    event = 'gsr',
                    shouldClose = true
                }, {
                    id = 'pdtası',
                    title = 'Taşı',
                    icon = 'user-friends',
                    type = 'client',
                    event = 'nko-kelepce:client:tasi',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Üst Ara',
                    icon = 'search',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = 'Hapise Gönder',
                    icon = 'user-lock',
                    type = 'command',
                    event = 'jail',
                    shouldClose = true
                }, {
                    id = 'gpsac',
                    title = 'GPS Aç',
                    icon = 'road',
                    type = 'command',
                    event = 'gpsac',
                    shouldClose = true
                }, {
                    id = 'gpskapa',
                    title = 'GPS Kapat',
                    icon = 'road',
                    type = 'command',
                    event = 'gpskapat',
                    shouldClose = true
                }
            }
        }, {
            id = 'policeobjects',
            title = 'Objeler',
            icon = 'road',
            items = {
                {
                    id = 'spawnpion',
                    title = 'Koni',
                    icon = 'exclamation-triangle',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawnhek',
                    title = 'Bariyer',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnschotten',
                    title = 'Hız Limiti Tabelası',
                    icon = 'sign',
                    type = 'client',
                    event = 'police:client:spawnRoadSign',
                    shouldClose = false
                }, {
                    id = 'spawntent',
                    title = 'Çadır',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting',
                    title = 'Işık',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                }, {
                    id = 'spikestrip',
                    title = 'Dikenli Tel',
                    icon = 'caret-up',
                    type = 'client',
                    event = 'police:client:SpawnSpikeStrip',
                    shouldClose = false
                }, {
                    id = 'deleteobject',
                    title = 'Obje Sil',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }
            }
        }
    },
    
    ["highway"] = {
        {
            id = 'emergencybutton3',
            title = 'Acil Durum Butonu',
            icon = 'bell',
            type = 'client',
            event = 'police:client:SendPoliceEmergencyAlert',
            shouldClose = true
        },{
            id = 'impound',
            title = 'Aracı Çek',
            icon = 'car-crash',
            type = 'client',
            event = 'polis:impound',
            shouldClose = true
        }, {
            id = 'kilitkır',
            title = 'Kilit Kır',
            icon = 'key',
            type = 'client',
            event = 'qb-police:client:unlockVehicle',
            shouldClose = true
        },{
            id = 'mdt',
            title = 'Polis Tableti',
            icon = 'tablet',
            type = 'command',
            event = 'mdt',
            shouldClose = true
        }, {
            id = 'playerinvehicle',
            title = 'Yaralı İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:ybindir',
            shouldClose = true
        },{
            id = 'playerinvehicle',
            title = 'Kelepçeli İndir/Bindir',
            icon = 'user-friends',
            type = 'client',
            event = 'nko-kelepce:client:arac',
            shouldClose = true
        },{
            id = 'faturavercano',
            title = 'Fatura Gönder',
            icon = 'file-invoice-dollar',
            type = 'client',
            event = 'g-billing:client:createBill',
            shouldClose = true
        }, {
            id = 'takedriverlicense',
            title = 'Lisans Sil',
            icon = 'id-card',
            type = 'client',
            event = 'police:client:SeizeDriverLicense',
            shouldClose = true
        }, {
            id = 'policeinteraction',
            title = 'Polis Eylemleri',
            icon = 'bars',
            items = {
                {
                    id = 'statuscheck',
                    title = 'Sağlığı Kontrol Et',
                    icon = 'heartbeat',
                    type = 'client',
                    event = 'hospital:client:CheckStatus',
                    shouldClose = true
                },{
                    id = 'showidpd',
                    title = 'Polis Kimlik Göster',
                    icon = 'id-card',
                    type = 'client',
                    event = 'jsfour-idcard:openPd',
                    shouldClose = true
                },{
                    id = 'faturavercano',
                    title = 'Ödenmemiş Fatura',
                    icon = 'file-invoice',
                    type = 'client',
                    event = 'g-billing:client:engageChooseYourBillsViewMenu',
                    shouldClose = true
                }, {
                    id = 'checkstatus',
                    title = 'GSR Testi',
                    icon = 'dna',
                    type = 'command',
                    event = 'gsr',
                    shouldClose = true
                }, {
                    id = 'pdtası',
                    title = 'Taşı',
                    icon = 'user-friends',
                    type = 'client',
                    event = 'nko-kelepce:client:tasi',
                    shouldClose = true
                }, {
                    id = 'searchplayer',
                    title = 'Üst Ara',
                    icon = 'search',
                    type = 'client',
                    event = 'police:client:SearchPlayer',
                    shouldClose = true
                }, {
                    id = 'jailplayer',
                    title = 'Hapise Gönder',
                    icon = 'user-lock',
                    type = 'command',
                    event = 'jail',
                    shouldClose = true
                }, {
                    id = 'gpsac',
                    title = 'GPS Aç',
                    icon = 'road',
                    type = 'command',
                    event = 'gpsac',
                    shouldClose = true
                }, {
                    id = 'gpskapa',
                    title = 'GPS Kapat',
                    icon = 'road',
                    type = 'command',
                    event = 'gpskapat',
                    shouldClose = true
                }
            }
        }, {
            id = 'policeobjects',
            title = 'Objeler',
            icon = 'road',
            items = {
                {
                    id = 'spawnpion',
                    title = 'Koni',
                    icon = 'exclamation-triangle',
                    type = 'client',
                    event = 'police:client:spawnCone',
                    shouldClose = false
                }, {
                    id = 'spawnhek',
                    title = 'Bariyer',
                    icon = 'torii-gate',
                    type = 'client',
                    event = 'police:client:spawnBarrier',
                    shouldClose = false
                }, {
                    id = 'spawnschotten',
                    title = 'Hız Limiti Tabelası',
                    icon = 'sign',
                    type = 'client',
                    event = 'police:client:spawnRoadSign',
                    shouldClose = false
                }, {
                    id = 'spawntent',
                    title = 'Çadır',
                    icon = 'campground',
                    type = 'client',
                    event = 'police:client:spawnTent',
                    shouldClose = false
                }, {
                    id = 'spawnverlichting',
                    title = 'Işık',
                    icon = 'lightbulb',
                    type = 'client',
                    event = 'police:client:spawnLight',
                    shouldClose = false
                }, {
                    id = 'spikestrip',
                    title = 'Dikenli Tel',
                    icon = 'caret-up',
                    type = 'client',
                    event = 'police:client:SpawnSpikeStrip',
                    shouldClose = false
                }, {
                    id = 'deleteobject',
                    title = 'Obje Sil',
                    icon = 'trash',
                    type = 'client',
                    event = 'police:client:deleteObject',
                    shouldClose = false
                }
            }
        }
    },
    ["hotdog"] = {
        {
            id = 'togglesell',
            title = 'Hot Dog Sat',
            icon = 'hotdog',
            type = 'client',
            event = 'qb-hotdogjob:client:ToggleSell',
            shouldClose = true
        }
    }
}

Config.TrunkClasses = {
    [0] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [1] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sedans
    [2] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- SUVs
    [3] = {allowed = true, x = 0.0, y = -1.5, z = 0.0}, -- Coupes
    [4] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Muscle
    [5] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports Classics
    [6] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Sports
    [7] = {allowed = true, x = 0.0, y = -2.0, z = 0.0}, -- Super
    [8] = {allowed = false, x = 0.0, y = -1.0, z = 0.25}, -- Motorcycles
    [9] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Off-road
    [10] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Industrial
    [11] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Utility
    [12] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Vans
    [13] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Cycles
    [14] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Boats
    [15] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Helicopters
    [16] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Planes
    [17] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Service
    [18] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Emergency
    [19] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Military
    [20] = {allowed = true, x = 0.0, y = -1.0, z = 0.25}, -- Commercial
    [21] = {allowed = true, x = 0.0, y = -1.0, z = 0.25} -- Trains
}

Config.ExtrasEnabled = true

Config.Commands = {
    ["top"] = {
        Func = function() ToggleClothing("Top") end,
        Sprite = "top",
        Desc = "Take your shirt off/on",
        Button = 1,
        Name = "Torso"
    },
    ["gloves"] = {
        Func = function() ToggleClothing("gloves") end,
        Sprite = "gloves",
        Desc = "Take your gloves off/on",
        Button = 2,
        Name = "Gloves"
    },
    ["visor"] = {
        Func = function() ToggleProps("visor") end,
        Sprite = "visor",
        Desc = "Toggle hat variation",
        Button = 3,
        Name = "Visor"
    },
    ["bag"] = {
        Func = function() ToggleClothing("Bag") end,
        Sprite = "bag",
        Desc = "Opens or closes your bag",
        Button = 8,
        Name = "Bag"
    },
    ["shoes"] = {
        Func = function() ToggleClothing("Shoes") end,
        Sprite = "shoes",
        Desc = "Take your shoes off/on",
        Button = 5,
        Name = "Shoes"
    },
    ["vest"] = {
        Func = function() ToggleClothing("Vest") end,
        Sprite = "vest",
        Desc = "Take your vest off/on",
        Button = 14,
        Name = "Vest"
    },
    ["hair"] = {
        Func = function() ToggleClothing("hair") end,
        Sprite = "hair",
        Desc = "Put your hair up/down/in a bun/ponytail.",
        Button = 7,
        Name = "Hair"
    },
    ["hat"] = {
        Func = function() ToggleProps("Hat") end,
        Sprite = "hat",
        Desc = "Take your hat off/on",
        Button = 4,
        Name = "Hat"
    },
    ["glasses"] = {
        Func = function() ToggleProps("Glasses") end,
        Sprite = "glasses",
        Desc = "Take your glasses off/on",
        Button = 9,
        Name = "Glasses"
    },
    ["ear"] = {
        Func = function() ToggleProps("Ear") end,
        Sprite = "ear",
        Desc = "Take your ear accessory off/on",
        Button = 10,
        Name = "Ear"
    },
    ["neck"] = {
        Func = function() ToggleClothing("Neck") end,
        Sprite = "neck",
        Desc = "Take your neck accessory off/on",
        Button = 11,
        Name = "Neck"
    },
    ["watch"] = {
        Func = function() ToggleProps("Watch") end,
        Sprite = "watch",
        Desc = "Take your watch off/on",
        Button = 12,
        Name = "Watch",
        Rotation = 5.0
    },
    ["bracelet"] = {
        Func = function() ToggleProps("Bracelet") end,
        Sprite = "bracelet",
        Desc = "Take your bracelet off/on",
        Button = 13,
        Name = "Bracelet"
    },
    ["mask"] = {
        Func = function() ToggleClothing("Mask") end,
        Sprite = "mask",
        Desc = "Take your mask off/on",
        Button = 6,
        Name = "Mask"
    }
}

local bags = {[40] = true, [41] = true, [44] = true, [45] = true}

Config.ExtraCommands = {
    ["pants"] = {
        Func = function() ToggleClothing("Pants", true) end,
        Sprite = "pants",
        Desc = "Take your pants off/on",
        Name = "Pants",
        OffsetX = -0.04,
        OffsetY = 0.0
    },
    ["shirt"] = {
        Func = function() ToggleClothing("Shirt", true) end,
        Sprite = "shirt",
        Desc = "Take your shirt off/on",
        Name = "shirt",
        OffsetX = 0.04,
        OffsetY = 0.0
    },
    ["reset"] = {
        Func = function()
            if not ResetClothing(true) then
                Notify('Nothing To Reset', 'error')
            end
        end,
        Sprite = "reset",
        Desc = "Revert everything back to normal",
        Name = "reset",
        OffsetX = 0.12,
        OffsetY = 0.2,
        Rotate = true
    },
    ["bagoff"] = {
        Func = function() ToggleClothing("Bagoff", true) end,
        Sprite = "bagoff",
        SpriteFunc = function()
            local Bag = GetPedDrawableVariation(PlayerPedId(), 5)
            local BagOff = LastEquipped["Bagoff"]
            if LastEquipped["Bagoff"] then
                if bags[BagOff.Drawable] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            end
            if Bag ~= 0 then
                if bags[Bag] then
                    return "bagoff"
                else
                    return "paraoff"
                end
            else
                return false
            end
        end,
        Desc = "Take your bag off/on",
        Name = "bagoff",
        OffsetX = -0.12,
        OffsetY = 0.2
    }
}

Config.BarberShops = {
	vector3(-814.308, -183.823, 36.568),
	vector3(136.826, -1708.373, 28.291),
	vector3(-1282.604, -1116.757, 5.990),
	vector3(1931.513, 3729.671, 31.844),
	vector3(1212.840, -472.921, 65.208),
	vector3(-32.885, -152.319, 56.076),
	vector3(-278.077, 6228.463, 30.695),
}

Config.GasStations = {
	vector3(49.4187, 2778.793, 58.043),
	vector3(263.894, 2606.463, 44.983),
	vector3(1039.958, 2671.134, 39.550),
	vector3(1207.260, 2660.175, 37.899),
	vector3(2539.685, 2594.192, 37.944),
	vector3(2679.858, 3263.946, 55.240),
	vector3(2005.055, 3773.887, 32.403),
	vector3(1687.156, 4929.392, 42.078),
	vector3(1701.314, 6416.028, 32.763),
	vector3(179.857, 6602.839, 31.868),
	vector3(-94.4619, 6419.594, 31.489),
	vector3(-2554.996, 2334.40, 33.078),
	vector3(-1800.375, 803.661, 138.651),
	vector3(-1437.622, -276.747, 46.207),
	vector3(-2096.243, -320.286, 13.168),
	vector3(-724.619, -935.1631, 19.213),
	vector3(-526.019, -1211.003, 18.184),
	vector3(-70.2148, -1761.792, 29.534),
	vector3(265.648, -1261.309, 29.292),
	vector3(819.653, -1028.846, 26.403),
	vector3(1208.951, -1402.567,35.224),
	vector3(1181.381, -330.847, 69.316),
	vector3(620.843, 269.100, 103.089),
	vector3(2581.321, 362.039, 108.468),
	vector3(176.631, -1562.025, 29.263),
	vector3(176.631, -1562.025, 29.263),
	vector3(-319.292, -1471.715, 30.549),
	vector3(1784.324, 3330.55, 41.253)
}

Config.Clothing = {
	vector3(1693.32, 4823.48,41.06 ),
	vector3(-712.215881, -155.352982, 37.4151268),
	vector3(-1192.94495, -772.688965, 17.3255997),
	vector3( 425.236, -806.008, 28.491),
	vector3(-162.658, -303.397, 38.733),
	vector3(75.950, -1392.891, 28.376),
	vector3(-822.194, -1074.134, 10.328),
	vector3(-1450.711, -236.83, 48.809),
	vector3(4.254, 6512.813, 30.877),
	vector3(615.180, 2762.933, 41.088),
	vector3(1196.785, 2709.558, 37.222),
	vector3(-3171.453, 1043.857, 19.863),
	vector3(-1100.959, 2710.211, 18.107),
	vector3(-1207.65, -1456.88, 4.3784737586975),
	vector3(121.76, -224.6, 53.56)
}

Config.Stores = {
    vector4(24.47, -1346.62, 29.5, 271.66),
    vector4(-3039.54, 584.38, 7.91, 17.27),
    vector4(-3242.97, 1000.01, 12.83, 357.57),
    vector4(1728.07, 6415.63, 35.04, 242.95),
    vector4(1959.82, 3740.48, 32.34, 301.57),
    vector4(549.13, 2670.85, 42.16, 99.39),
    vector4(2677.47, 3279.76, 55.24, 335.08),
    vector4(2556.66, 380.84, 108.62, 356.67),
    vector4(372.66, 326.98, 103.57, 253.73),
    vector4(-47.02, -1758.23, 29.42, 45.05),
    vector4(-706.06, -913.97, 19.22, 88.04),
    vector4(-1820.02, 794.03, 138.09, 135.45),
    vector4(1164.71, -322.94, 69.21, 101.72),
    vector4(1697.87, 4922.96, 42.06, 324.71),
}

Config.Youtool = {
    vector4(45.68, -1749.04, 29.61, 53.13),
    vector4(2747.71, 3472.85, 55.67, 255.08),
    vector4(-421.83, 6136.13, 31.88, 228.2),
}

Config.Gun = {
    vector4(-661.96, -933.53, 21.83, 177.05),
    vector4(809.68, -2159.13, 29.62, 1.43),
    vector4(1692.67, 3761.38, 34.71, 227.65),
    vector4(-331.23, 6085.37, 31.45, 228.02),
    vector4(253.63, -51.02, 69.94, 72.91),
    vector4(23.0, -1105.67, 29.8, 162.91),
    vector4(2567.48, 292.59, 108.73, 349.68),
    vector4(-1118.59, 2700.05, 18.55, 221.89),
    vector4(841.92, -1035.32, 28.19, 1.56),
    vector4(-1304.19, -395.12, 36.7, 75.03),
    vector4(-3173.31, 1088.85, 20.84, 244.18),
}

Config.Benny = {
    vector3(-205.6992, -1312.7377, 31.1588),
    vector3(-41.8942, -1044.1943, 28.6297),
    vector3(725.8828, -1088.7747, 22.1693),
    vector3(-1420.1882, -441.8745, 35.9097),
    vector3(108.3242, 6624.0996, 31.7873),
    vector3(140.6093, -3030.3933, 7.0409),
}

Config.Tattoooshops = {
	vector3(1322.6, -1651.9, 52.3),
	vector3(-1153.6, -1425.6, 4.9),
	vector3(322.1, 180.4, 103.5),
	vector3(-3170.0, 1075.0, 20.8),
	vector3(1864.6, 3747.7, 33.0),
	vector3(-293.7, 6200.0, 31.4),
}

Config.Market = {
	vector3(25.73, -1347.27, 29.5),
    vector3(-48.37, -1757.93, 29.42),
    vector3(-1222.26, -906.86, 12.33),
    vector3(-1487.62, -378.60, 40.16),
    vector3(-707.31, -914.66, 19.22),
    vector3(1135.7, -982.79, 46.42),
    vector3(373.55, 325.52, 103.57),
    vector3(1163.67, -323.92, 69.21),
    vector3(2557.44, 382.03, 108.62),
    vector3(-3039.16, 585.71, 7.91),
    vector3(-3242.11, 1001.20, 12.83),
    vector3(-2967.78, 391.49, 15.04),
    vector3(-1820.38, 792.69, 138.11),
    vector3(547.75, 2671.53, 42.16),
    vector3(1165.36, 2709.45, 38.16),
    vector3(2678.82, 3280.36, 55.24),
    vector3(1961.17, 3740.5, 32.34),
    vector3(1393.13, 3605.2, 34.98),
    vector3(1697.92, 4924.46, 42.06),
    vector3(1728.78, 6414.41, 35.04),
}
