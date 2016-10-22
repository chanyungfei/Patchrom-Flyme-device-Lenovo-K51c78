.class Lcom/mediatek/mom/MobileManagerService$b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/mom/MobileManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic S:Lcom/mediatek/mom/MobileManagerService;


# direct methods
.method private constructor <init>(Lcom/mediatek/mom/MobileManagerService;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/mediatek/mom/MobileManagerService$b;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/mom/MobileManagerService;Lcom/mediatek/mom/MobileManagerService$1;)V
    .locals 0

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcom/mediatek/mom/MobileManagerService$b;-><init>(Lcom/mediatek/mom/MobileManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, -0x2710

    .line 553
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 555
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$b;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, v0, v5}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;II)V

    .line 556
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$b;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, v5, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Lcom/mediatek/mom/MobileManagerService;II)V

    .line 566
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 558
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 559
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$b;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, v0, v4}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;II)V

    .line 560
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$b;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, v4, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Lcom/mediatek/mom/MobileManagerService;II)V

    goto :goto_0

    .line 561
    :cond_2
    const-string v0, "android.intent.action.USER_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 562
    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 563
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$b;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, v0, v3}, Lcom/mediatek/mom/MobileManagerService;->a(Lcom/mediatek/mom/MobileManagerService;II)V

    .line 564
    iget-object v1, p0, Lcom/mediatek/mom/MobileManagerService$b;->S:Lcom/mediatek/mom/MobileManagerService;

    invoke-static {v1, v3, v0}, Lcom/mediatek/mom/MobileManagerService;->b(Lcom/mediatek/mom/MobileManagerService;II)V

    goto :goto_0
.end method
