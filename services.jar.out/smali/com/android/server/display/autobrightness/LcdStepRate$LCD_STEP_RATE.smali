.class public final enum Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;
.super Ljava/lang/Enum;
.source "LcdStepRate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/LcdStepRate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LCD_STEP_RATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

.field public static final enum FAST:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

.field public static final enum IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

.field public static final enum INSTANT:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

.field public static final enum SLOW:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    new-instance v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    const-string v1, "SLOW"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->SLOW:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    new-instance v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    const-string v1, "FAST"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->FAST:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    new-instance v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    const-string v1, "INSTANT"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->INSTANT:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    .line 21
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->IDLE:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->SLOW:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->FAST:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->INSTANT:Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->$VALUES:[Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->$VALUES:[Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    invoke-virtual {v0}, [Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/autobrightness/LcdStepRate$LCD_STEP_RATE;

    return-object v0
.end method
