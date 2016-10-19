.class Lcom/android/internal/telephony/cdma/utk/UtkService$2;
.super Landroid/content/BroadcastReceiver;
.source "UtkService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/utk/UtkService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/UtkService;)V
    .locals 0

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 358
    const-string v3, "com.mediatek.intent.action.FINISH_SWITCH_ROAMING_MODE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 359
    const-string v3, "phone"

    const/4 v4, -0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 360
    .local v1, "phoneId":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received IR state changed broadcast at phone "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->mPhoneId:I
    invoke-static {v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$000(Lcom/android/internal/telephony/cdma/utk/UtkService;)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 362
    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$100()Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    if-nez v3, :cond_1

    .line 363
    const-string v3, "sLteDcPhoneProxy is null and ignore this event"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    .end local v1    # "phoneId":I
    :cond_0
    :goto_0
    return-void

    .line 366
    .restart local v1    # "phoneId":I
    :cond_1
    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->sLteDcPhoneProxy:Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$100()Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getSvlteRatController()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;

    move-result-object v2

    .line 367
    .local v2, "sLteRatController":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;
    const/4 v0, 0x0

    .line 368
    .local v0, "mRoamingMode":Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    if-eqz v2, :cond_0

    .line 369
    invoke-virtual {v2}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController;->getRoamingMode()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v0

    .line 370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mRoamingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  sRoamingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$200()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 372
    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    if-eq v3, v0, :cond_2

    sget-object v3, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;->ROAMING_MODE_NORMAL_ROAMING:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    # getter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$200()Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 374
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/UtkService$2;->this$0:Lcom/android/internal/telephony/cdma/utk/UtkService;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cdma/utk/UtkService;->queryUtkSetupMenuFromMD()V

    .line 376
    :cond_2
    # setter for: Lcom/android/internal/telephony/cdma/utk/UtkService;->sRoamingMode:Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/utk/UtkService;->access$202(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;)Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteRatController$RoamingMode;

    goto :goto_0
.end method
