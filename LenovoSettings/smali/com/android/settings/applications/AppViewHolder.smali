.class public Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;
.super Ljava/lang/Object;
.source "AppViewHolder.java"


# instance fields
.field public appIcon:Landroid/widget/ImageView;

.field public appName:Landroid/widget/TextView;

.field public appSize:Landroid/widget/TextView;

.field public checkBox:Landroid/widget/CheckBox;

.field public disabled:Landroid/widget/TextView;

.field public rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;
    .locals 3
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 24
    if-nez p1, :cond_0

    .line 25
    const v1, 0x7f040065

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 29
    new-instance v0, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;

    invoke-direct {v0}, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;-><init>()V

    .line 30
    .local v0, "holder":Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;
    iput-object p1, v0, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;->rootView:Landroid/view/View;

    .line 31
    const v1, 0x7f0b00a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;->appName:Landroid/widget/TextView;

    .line 32
    const v1, 0x7f0b007a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 33
    const v1, 0x7f0b00a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 34
    const v1, 0x7f0b00aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 35
    const v1, 0x7f0b00a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 36
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .end local v0    # "holder":Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/deviceoriginalsettings/applications/AppViewHolder;

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method updateSizeText(Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "invalidSizeStr"    # Ljava/lang/CharSequence;
    .param p2, "whichSize"    # I

    .prologue
    .line 63
    return-void
.end method
