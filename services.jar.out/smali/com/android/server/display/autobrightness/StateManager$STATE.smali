.class public final enum Lcom/android/server/display/autobrightness/StateManager$STATE;
.super Ljava/lang/Enum;
.source "StateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/autobrightness/StateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/display/autobrightness/StateManager$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/display/autobrightness/StateManager$STATE;

.field public static final enum STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field public static final enum STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field public static final enum STATE_DIM:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field public static final enum STATE_FIXED:Lcom/android/server/display/autobrightness/StateManager$STATE;

.field public static final enum STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-string v1, "STATE_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/autobrightness/StateManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v0, Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-string v1, "STATE_FIXED"

    invoke-direct {v0, v1, v3}, Lcom/android/server/display/autobrightness/StateManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_FIXED:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v0, Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-string v1, "STATE_BRIGHT"

    invoke-direct {v0, v1, v4}, Lcom/android/server/display/autobrightness/StateManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v0, Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-string v1, "STATE_DIM"

    invoke-direct {v0, v1, v5}, Lcom/android/server/display/autobrightness/StateManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DIM:Lcom/android/server/display/autobrightness/StateManager$STATE;

    new-instance v0, Lcom/android/server/display/autobrightness/StateManager$STATE;

    const-string v1, "STATE_DARK"

    invoke-direct {v0, v1, v6}, Lcom/android/server/display/autobrightness/StateManager$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    .line 19
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/display/autobrightness/StateManager$STATE;

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_UNKNOWN:Lcom/android/server/display/autobrightness/StateManager$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_FIXED:Lcom/android/server/display/autobrightness/StateManager$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_BRIGHT:Lcom/android/server/display/autobrightness/StateManager$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DIM:Lcom/android/server/display/autobrightness/StateManager$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/display/autobrightness/StateManager$STATE;->STATE_DARK:Lcom/android/server/display/autobrightness/StateManager$STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->$VALUES:[Lcom/android/server/display/autobrightness/StateManager$STATE;

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
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/display/autobrightness/StateManager$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 19
    const-class v0, Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/autobrightness/StateManager$STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/display/autobrightness/StateManager$STATE;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/android/server/display/autobrightness/StateManager$STATE;->$VALUES:[Lcom/android/server/display/autobrightness/StateManager$STATE;

    invoke-virtual {v0}, [Lcom/android/server/display/autobrightness/StateManager$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/display/autobrightness/StateManager$STATE;

    return-object v0
.end method
