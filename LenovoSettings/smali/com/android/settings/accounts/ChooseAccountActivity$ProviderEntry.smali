.class Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/CharSequence;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0
    .param p1, "providerName"    # Ljava/lang/CharSequence;
    .param p2, "accountType"    # Ljava/lang/String;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    .line 80
    iput-object p2, p0, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;)I
    .locals 2
    .param p1, "another"    # Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 85
    const/4 v0, -0x1

    .line 90
    :goto_0
    return v0

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    .line 88
    const/4 v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/internal/util/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 75
    check-cast p1, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;->compareTo(Lcom/flyme/deviceoriginalsettings/accounts/ChooseAccountActivity$ProviderEntry;)I

    move-result v0

    return v0
.end method
