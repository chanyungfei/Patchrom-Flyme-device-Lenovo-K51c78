.class Lcom/android/server/am/AppPcService$FirewallRuleSet;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirewallRuleSet"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/am/AppPcService$FirewallRuleSet;",
            ">;"
        }
    .end annotation
.end field

.field public static final RULE_TAG:Ljava/lang/String; = "#"


# instance fields
.field public mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

.field public wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2485
    new-instance v0, Lcom/android/server/am/AppPcService$FirewallRuleSet$1;

    invoke-direct {v0}, Lcom/android/server/am/AppPcService$FirewallRuleSet$1;-><init>()V

    sput-object v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2423
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 2425
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2426
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2427
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2428
    return-void
.end method

.method public static defaultValue()Lcom/android/server/am/AppPcService$FirewallRuleSet;
    .locals 2

    .prologue
    .line 2431
    new-instance v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    invoke-direct {v0}, Lcom/android/server/am/AppPcService$FirewallRuleSet;-><init>()V

    .line 2432
    .local v0, "ruleSet":Lcom/android/server/am/AppPcService$FirewallRuleSet;
    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Allow:Lcom/android/server/am/AppPcService$FirewallRule;

    iput-object v1, v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2433
    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Allow:Lcom/android/server/am/AppPcService$FirewallRule;

    iput-object v1, v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2434
    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lcom/android/server/am/AppPcService$FirewallRuleSet;
    .locals 5
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2438
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    .line 2450
    :goto_0
    return-object v1

    .line 2442
    :cond_0
    :try_start_0
    const-string v4, "#"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2443
    .local v2, "set":[Ljava/lang/String;
    new-instance v1, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    invoke-direct {v1}, Lcom/android/server/am/AppPcService$FirewallRuleSet;-><init>()V

    .line 2444
    .local v1, "ruleSet":Lcom/android/server/am/AppPcService$FirewallRuleSet;
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2445
    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/am/AppPcService$FirewallRule;->parse(I)Lcom/android/server/am/AppPcService$FirewallRule;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2447
    .end local v1    # "ruleSet":Lcom/android/server/am/AppPcService$FirewallRuleSet;
    .end local v2    # "set":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2448
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v3

    .line 2450
    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2476
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 2464
    instance-of v1, p1, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 2465
    check-cast v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;

    .line 2466
    .local v0, "otherRuleSet":Lcom/android/server/am/AppPcService$FirewallRuleSet;
    iget-object v1, v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    iget-object v2, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    iget-object v2, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    if-ne v1, v2, :cond_0

    .line 2468
    const/4 v1, 0x1

    .line 2471
    .end local v0    # "otherRuleSet":Lcom/android/server/am/AppPcService$FirewallRuleSet;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2456
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v1}, Lcom/android/server/am/AppPcService$FirewallRule;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v2}, Lcom/android/server/am/AppPcService$FirewallRule;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2459
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2481
    iget-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->mobileRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppPcService$FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2482
    iget-object v0, p0, Lcom/android/server/am/AppPcService$FirewallRuleSet;->wifiRule:Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/AppPcService$FirewallRule;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2483
    return-void
.end method
