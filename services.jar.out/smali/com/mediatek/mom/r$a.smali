.class Lcom/mediatek/mom/r$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic am:Lcom/mediatek/mom/r;


# direct methods
.method private constructor <init>(Lcom/mediatek/mom/r;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/mediatek/mom/r$a;->am:Lcom/mediatek/mom/r;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mom/r;Lcom/mediatek/mom/r$1;)V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/mediatek/mom/r$a;-><init>(Lcom/mediatek/mom/r;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 143
    const-string v0, "android.intent.action.ACTION_PREBOOT_IPO"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mediatek/mom/r$a;->am:Lcom/mediatek/mom/r;

    invoke-static {v0}, Lcom/mediatek/mom/r;->a(Lcom/mediatek/mom/r;)V

    .line 146
    :cond_0
    return-void
.end method
