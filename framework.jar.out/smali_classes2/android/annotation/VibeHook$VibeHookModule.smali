.class public final enum Landroid/annotation/VibeHook$VibeHookModule;
.super Ljava/lang/Enum;
.source "VibeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/VibeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibeHookModule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/VibeHook$VibeHookModule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum ANIMATION:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum BROWSER:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum CALENDAR:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum CAMERA:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum CAR_APP:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum CLOCK:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum FONT:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum GALLERY:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum HOTSPOT:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum IDEAFRIEND:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum INCALLUI:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum KEYGUARD:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum LENOVOSTORE:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum LENOVO_SAFE:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum LEVOICE:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum MY_WIFI:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum NONE:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum POWER:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum PROFILE_SETTINGS:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum SEARCH:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum SETUPWIZARD:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum SYSTEMUI:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum THEME:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum TUTORIAL:Landroid/annotation/VibeHook$VibeHookModule;

.field public static final enum UPDATE:Landroid/annotation/VibeHook$VibeHookModule;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "CAMERA"

    invoke-direct {v0, v1, v3}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->CAMERA:Landroid/annotation/VibeHook$VibeHookModule;

    .line 62
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "BROWSER"

    invoke-direct {v0, v1, v4}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->BROWSER:Landroid/annotation/VibeHook$VibeHookModule;

    .line 63
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "CALENDAR"

    invoke-direct {v0, v1, v5}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->CALENDAR:Landroid/annotation/VibeHook$VibeHookModule;

    .line 64
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "CAR_APP"

    invoke-direct {v0, v1, v6}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->CAR_APP:Landroid/annotation/VibeHook$VibeHookModule;

    .line 65
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "CLOCK"

    invoke-direct {v0, v1, v7}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->CLOCK:Landroid/annotation/VibeHook$VibeHookModule;

    .line 66
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "GALLERY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->GALLERY:Landroid/annotation/VibeHook$VibeHookModule;

    .line 67
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "IDEAFRIEND"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->IDEAFRIEND:Landroid/annotation/VibeHook$VibeHookModule;

    .line 68
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "KEYGUARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->KEYGUARD:Landroid/annotation/VibeHook$VibeHookModule;

    .line 69
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "MY_WIFI"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->MY_WIFI:Landroid/annotation/VibeHook$VibeHookModule;

    .line 70
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "POWER"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->POWER:Landroid/annotation/VibeHook$VibeHookModule;

    .line 71
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "SEARCH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->SEARCH:Landroid/annotation/VibeHook$VibeHookModule;

    .line 72
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "SYSTEMUI"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->SYSTEMUI:Landroid/annotation/VibeHook$VibeHookModule;

    .line 73
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "THEME"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->THEME:Landroid/annotation/VibeHook$VibeHookModule;

    .line 74
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "TUTORIAL"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->TUTORIAL:Landroid/annotation/VibeHook$VibeHookModule;

    .line 75
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "FONT"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->FONT:Landroid/annotation/VibeHook$VibeHookModule;

    .line 76
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "ANIMATION"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->ANIMATION:Landroid/annotation/VibeHook$VibeHookModule;

    .line 77
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "UPDATE"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->UPDATE:Landroid/annotation/VibeHook$VibeHookModule;

    .line 78
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "HOTSPOT"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->HOTSPOT:Landroid/annotation/VibeHook$VibeHookModule;

    .line 79
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "SETUPWIZARD"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->SETUPWIZARD:Landroid/annotation/VibeHook$VibeHookModule;

    .line 80
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "PROFILE_SETTINGS"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->PROFILE_SETTINGS:Landroid/annotation/VibeHook$VibeHookModule;

    .line 81
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "LENOVO_SAFE"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->LENOVO_SAFE:Landroid/annotation/VibeHook$VibeHookModule;

    .line 82
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "LENOVOSTORE"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->LENOVOSTORE:Landroid/annotation/VibeHook$VibeHookModule;

    .line 83
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "INCALLUI"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->INCALLUI:Landroid/annotation/VibeHook$VibeHookModule;

    .line 84
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "LEVOICE"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->LEVOICE:Landroid/annotation/VibeHook$VibeHookModule;

    .line 85
    new-instance v0, Landroid/annotation/VibeHook$VibeHookModule;

    const-string v1, "NONE"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookModule;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->NONE:Landroid/annotation/VibeHook$VibeHookModule;

    .line 60
    const/16 v0, 0x19

    new-array v0, v0, [Landroid/annotation/VibeHook$VibeHookModule;

    sget-object v1, Landroid/annotation/VibeHook$VibeHookModule;->CAMERA:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/VibeHook$VibeHookModule;->BROWSER:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/VibeHook$VibeHookModule;->CALENDAR:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v1, v0, v5

    sget-object v1, Landroid/annotation/VibeHook$VibeHookModule;->CAR_APP:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v1, v0, v6

    sget-object v1, Landroid/annotation/VibeHook$VibeHookModule;->CLOCK:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->GALLERY:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->IDEAFRIEND:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->KEYGUARD:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->MY_WIFI:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->POWER:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->SEARCH:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->SYSTEMUI:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->THEME:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->TUTORIAL:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->FONT:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->ANIMATION:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->UPDATE:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->HOTSPOT:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->SETUPWIZARD:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->PROFILE_SETTINGS:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->LENOVO_SAFE:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->LENOVOSTORE:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->INCALLUI:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->LEVOICE:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Landroid/annotation/VibeHook$VibeHookModule;->NONE:Landroid/annotation/VibeHook$VibeHookModule;

    aput-object v2, v0, v1

    sput-object v0, Landroid/annotation/VibeHook$VibeHookModule;->$VALUES:[Landroid/annotation/VibeHook$VibeHookModule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/VibeHook$VibeHookModule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Landroid/annotation/VibeHook$VibeHookModule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/VibeHook$VibeHookModule;

    return-object v0
.end method

.method public static values()[Landroid/annotation/VibeHook$VibeHookModule;
    .locals 1

    .prologue
    .line 60
    sget-object v0, Landroid/annotation/VibeHook$VibeHookModule;->$VALUES:[Landroid/annotation/VibeHook$VibeHookModule;

    invoke-virtual {v0}, [Landroid/annotation/VibeHook$VibeHookModule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/VibeHook$VibeHookModule;

    return-object v0
.end method
