.class final enum Landroid/widget/TranslationViewHelper$PopupWindowState;
.super Ljava/lang/Enum;
.source "TranslationViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TranslationViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PopupWindowState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/TranslationViewHelper$PopupWindowState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TranslationViewHelper$PopupWindowState;

.field public static final enum Error:Landroid/widget/TranslationViewHelper$PopupWindowState;

.field public static final enum Pending:Landroid/widget/TranslationViewHelper$PopupWindowState;

.field public static final enum Result:Landroid/widget/TranslationViewHelper$PopupWindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    new-instance v0, Landroid/widget/TranslationViewHelper$PopupWindowState;

    const-string v1, "Pending"

    invoke-direct {v0, v1, v2}, Landroid/widget/TranslationViewHelper$PopupWindowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->Pending:Landroid/widget/TranslationViewHelper$PopupWindowState;

    new-instance v0, Landroid/widget/TranslationViewHelper$PopupWindowState;

    const-string v1, "Error"

    invoke-direct {v0, v1, v3}, Landroid/widget/TranslationViewHelper$PopupWindowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->Error:Landroid/widget/TranslationViewHelper$PopupWindowState;

    new-instance v0, Landroid/widget/TranslationViewHelper$PopupWindowState;

    const-string v1, "Result"

    invoke-direct {v0, v1, v4}, Landroid/widget/TranslationViewHelper$PopupWindowState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->Result:Landroid/widget/TranslationViewHelper$PopupWindowState;

    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/TranslationViewHelper$PopupWindowState;

    sget-object v1, Landroid/widget/TranslationViewHelper$PopupWindowState;->Pending:Landroid/widget/TranslationViewHelper$PopupWindowState;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/TranslationViewHelper$PopupWindowState;->Error:Landroid/widget/TranslationViewHelper$PopupWindowState;

    aput-object v1, v0, v3

    sget-object v1, Landroid/widget/TranslationViewHelper$PopupWindowState;->Result:Landroid/widget/TranslationViewHelper$PopupWindowState;

    aput-object v1, v0, v4

    sput-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->$VALUES:[Landroid/widget/TranslationViewHelper$PopupWindowState;

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
    .line 120
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TranslationViewHelper$PopupWindowState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    const-class v0, Landroid/widget/TranslationViewHelper$PopupWindowState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/TranslationViewHelper$PopupWindowState;

    return-object v0
.end method

.method public static values()[Landroid/widget/TranslationViewHelper$PopupWindowState;
    .locals 1

    .prologue
    .line 120
    sget-object v0, Landroid/widget/TranslationViewHelper$PopupWindowState;->$VALUES:[Landroid/widget/TranslationViewHelper$PopupWindowState;

    invoke-virtual {v0}, [Landroid/widget/TranslationViewHelper$PopupWindowState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/TranslationViewHelper$PopupWindowState;

    return-object v0
.end method
