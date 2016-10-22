.class public Lcom/lenovo/settings/TrustedCredentialsActivity;
.super Llenovo/app/ActionBarActivity;
.source "TrustedCredentialsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Llenovo/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 15
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v0

    .line 18
    .local v0, "bar":Llenovo/app/ActionBar;
    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, v4}, Llenovo/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 20
    invoke-virtual {v0, v4}, Llenovo/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 21
    invoke-virtual {v0, v6}, Llenovo/app/ActionBar;->setNavigationMode(I)V

    .line 23
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 24
    .local v1, "systemTab":Landroid/os/Bundle;
    const-string v3, "type"

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 25
    invoke-virtual {v0, v1}, Llenovo/app/ActionBar;->newTab(Landroid/os/Bundle;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0c0b69

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Llenovo/app/ActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;Z)V

    .line 29
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 30
    .local v2, "userTab":Landroid/os/Bundle;
    const-string v3, "type"

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 31
    invoke-virtual {v0, v2}, Llenovo/app/ActionBar;->newTab(Landroid/os/Bundle;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const-class v4, Lcom/lenovo/settings/TrustedCredentialsSettings;

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    move-result-object v3

    const v4, 0x7f0c0b6a

    invoke-virtual {v3, v4}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v3

    invoke-virtual {v0, v3, v5}, Llenovo/app/ActionBar;->addFragmentTab(Landroid/app/ActionBar$Tab;Z)V

    .line 35
    .end local v1    # "systemTab":Landroid/os/Bundle;
    .end local v2    # "userTab":Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 39
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/lenovo/settings/TrustedCredentialsActivity;->onBackPressed()V

    .line 41
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
