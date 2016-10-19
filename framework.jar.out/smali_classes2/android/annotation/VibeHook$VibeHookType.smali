.class public final enum Landroid/annotation/VibeHook$VibeHookType;
.super Ljava/lang/Enum;
.source "VibeHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/VibeHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VibeHookType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/VibeHook$VibeHookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_BASE_CLASS:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_CODE:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_CODE_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_PARAMETER:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_PARAMETER_AND_CODE:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum CHANGE_PARAMETER_AND_CODE_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum NEW_CLASS:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum NEW_FIELD:Landroid/annotation/VibeHook$VibeHookType;

.field public static final enum NEW_METHOD:Landroid/annotation/VibeHook$VibeHookType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_ACCESS"

    invoke-direct {v0, v1, v3}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    .line 45
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_CODE"

    invoke-direct {v0, v1, v4}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE:Landroid/annotation/VibeHook$VibeHookType;

    .line 46
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_CODE_AND_ACCESS"

    invoke-direct {v0, v1, v5}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    .line 47
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_PARAMETER"

    invoke-direct {v0, v1, v6}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER:Landroid/annotation/VibeHook$VibeHookType;

    .line 48
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_PARAMETER_AND_ACCESS"

    invoke-direct {v0, v1, v7}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    .line 49
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_PARAMETER_AND_CODE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER_AND_CODE:Landroid/annotation/VibeHook$VibeHookType;

    .line 50
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_PARAMETER_AND_CODE_AND_ACCESS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER_AND_CODE_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    .line 51
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "CHANGE_BASE_CLASS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_BASE_CLASS:Landroid/annotation/VibeHook$VibeHookType;

    .line 52
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "NEW_FIELD"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->NEW_FIELD:Landroid/annotation/VibeHook$VibeHookType;

    .line 53
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "NEW_METHOD"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->NEW_METHOD:Landroid/annotation/VibeHook$VibeHookType;

    .line 54
    new-instance v0, Landroid/annotation/VibeHook$VibeHookType;

    const-string v1, "NEW_CLASS"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/annotation/VibeHook$VibeHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->NEW_CLASS:Landroid/annotation/VibeHook$VibeHookType;

    .line 37
    const/16 v0, 0xb

    new-array v0, v0, [Landroid/annotation/VibeHook$VibeHookType;

    sget-object v1, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER_AND_CODE:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_PARAMETER_AND_CODE_AND_ACCESS:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Landroid/annotation/VibeHook$VibeHookType;->CHANGE_BASE_CLASS:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Landroid/annotation/VibeHook$VibeHookType;->NEW_FIELD:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Landroid/annotation/VibeHook$VibeHookType;->NEW_METHOD:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Landroid/annotation/VibeHook$VibeHookType;->NEW_CLASS:Landroid/annotation/VibeHook$VibeHookType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/annotation/VibeHook$VibeHookType;->$VALUES:[Landroid/annotation/VibeHook$VibeHookType;

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
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/VibeHook$VibeHookType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-class v0, Landroid/annotation/VibeHook$VibeHookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/VibeHook$VibeHookType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/VibeHook$VibeHookType;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/annotation/VibeHook$VibeHookType;->$VALUES:[Landroid/annotation/VibeHook$VibeHookType;

    invoke-virtual {v0}, [Landroid/annotation/VibeHook$VibeHookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/VibeHook$VibeHookType;

    return-object v0
.end method
