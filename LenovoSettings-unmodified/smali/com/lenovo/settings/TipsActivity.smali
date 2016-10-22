.class public Lcom/lenovo/settings/TipsActivity;
.super Llenovo/app/ActionBarActivity;
.source "TipsActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Llenovo/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const v4, 0x7f04009b

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/TipsActivity;->setContentView(I)V

    .line 20
    const v4, 0x7f0b0129

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/TipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 21
    .local v3, "img":Landroid/widget/ImageView;
    const v4, 0x7f0200dc

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 22
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 23
    .local v0, "animation":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 25
    const v4, 0x7f0b012d

    invoke-virtual {p0, v4}, Lcom/lenovo/settings/TipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 26
    .local v2, "bttn":Landroid/widget/Button;
    new-instance v4, Lcom/lenovo/settings/TipsActivity$1;

    invoke-direct {v4, p0}, Lcom/lenovo/settings/TipsActivity$1;-><init>(Lcom/lenovo/settings/TipsActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/lenovo/settings/TipsActivity;->getActionBar()Llenovo/app/ActionBar;

    move-result-object v1

    .line 34
    .local v1, "bar":Landroid/app/ActionBar;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 36
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 41
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/lenovo/settings/TipsActivity;->finish()V

    .line 43
    const/4 v0, 0x1

    .line 45
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Llenovo/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method
