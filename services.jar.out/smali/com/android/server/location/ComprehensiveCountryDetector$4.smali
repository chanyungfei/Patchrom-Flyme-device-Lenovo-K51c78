.class Lcom/android/server/location/ComprehensiveCountryDetector$4;
.super Landroid/telephony/PhoneStateListener;
.source "ComprehensiveCountryDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/ComprehensiveCountryDetector;->addPhoneStateListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/ComprehensiveCountryDetector;


# direct methods
.method constructor <init>(Lcom/android/server/location/ComprehensiveCountryDetector;)V
    .locals 0

    .prologue
    .line 442
    iput-object p1, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 4
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    const/4 v3, 0x1

    .line 445
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # operator++ for: Lcom/android/server/location/ComprehensiveCountryDetector;->mCountServiceStateChanges:I
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$308(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    .line 446
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # operator++ for: Lcom/android/server/location/ComprehensiveCountryDetector;->mTotalCountServiceStateChanges:I
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$408(Lcom/android/server/location/ComprehensiveCountryDetector;)I

    .line 448
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # invokes: Lcom/android/server/location/ComprehensiveCountryDetector;->isNetworkCountryCodeAvailable()Z
    invoke-static {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$500(Lcom/android/server/location/ComprehensiveCountryDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string v0, "CountryDetector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v0, p0, Lcom/android/server/location/ComprehensiveCountryDetector$4;->this$0:Lcom/android/server/location/ComprehensiveCountryDetector;

    # invokes: Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry(ZZ)Landroid/location/Country;
    invoke-static {v0, v3, v3}, Lcom/android/server/location/ComprehensiveCountryDetector;->access$100(Lcom/android/server/location/ComprehensiveCountryDetector;ZZ)Landroid/location/Country;

    goto :goto_0
.end method
