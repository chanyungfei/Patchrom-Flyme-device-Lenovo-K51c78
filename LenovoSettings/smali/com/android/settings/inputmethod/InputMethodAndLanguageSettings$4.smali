.class final Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings$4;
.super Lcom/lenovo/settings/search/BaseSearchIndexProvider;
.source "InputMethodAndLanguageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 728
    invoke-direct {p0}, Lcom/lenovo/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 26
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/lenovo/settings/search/provider/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 734
    .local v10, "indexables":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/settings/search/provider/SearchIndexableRaw;>;"
    const v24, 0x7f0c08a3

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 736
    .local v16, "screenTitle":Ljava/lang/String;
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 737
    .local v9, "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 738
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 739
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 740
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 741
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 742
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_0

    .line 746
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 747
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "phone_language"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 748
    const v24, 0x7f0c08a7

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 749
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 750
    const/16 v24, 0x0

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 751
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 752
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 756
    :cond_0
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 757
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "spellcheckers_settings"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 758
    const v24, 0x7f0c0b84

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 759
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 760
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 763
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v24

    if-eqz v24, :cond_1

    .line 764
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 765
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "key_user_dictionary_settings"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 766
    const v24, 0x7f0c08be

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 767
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 768
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 772
    :cond_1
    invoke-static/range {p1 .. p1}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object v8

    .line 773
    .local v8, "immValues":Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;
    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 776
    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getCurrentInputMethodName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 777
    .local v6, "currImeName":Ljava/lang/String;
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 778
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "current_input_method"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 779
    const v24, 0x7f0c08e2

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 780
    iput-object v6, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 781
    iput-object v6, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 782
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 783
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 785
    const-string v24, "input_method"

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/inputmethod/InputMethodManager;

    .line 789
    .local v13, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v8}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v14

    .line 790
    .local v14, "inputMethods":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    if-nez v14, :cond_3

    const/4 v12, 0x0

    .line 791
    .local v12, "inputMethodCount":I
    :goto_0
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v12, :cond_5

    .line 792
    invoke-interface {v14, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodInfo;

    .line 794
    .local v11, "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 795
    .local v4, "builder":Ljava/lang/StringBuilder;
    const/16 v24, 0x1

    move/from16 v0, v24

    invoke-virtual {v13, v11, v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v21

    .line 797
    .local v21, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v19

    .line 798
    .local v19, "subtypeCount":I
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_2
    move/from16 v0, v19

    if-ge v15, v0, :cond_4

    .line 799
    move-object/from16 v0, v21

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/inputmethod/InputMethodSubtype;

    .line 800
    .local v18, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v24

    if-lez v24, :cond_2

    .line 801
    const/16 v24, 0x2c

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 803
    :cond_2
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v25

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/inputmethod/InputMethodSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 805
    .local v20, "subtypeLabel":Ljava/lang/CharSequence;
    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 798
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 790
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "i":I
    .end local v11    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v12    # "inputMethodCount":I
    .end local v15    # "j":I
    .end local v18    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    .end local v19    # "subtypeCount":I
    .end local v20    # "subtypeLabel":Ljava/lang/CharSequence;
    .end local v21    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v12

    goto :goto_0

    .line 807
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v7    # "i":I
    .restart local v11    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v12    # "inputMethodCount":I
    .restart local v15    # "j":I
    .restart local v19    # "subtypeCount":I
    .restart local v21    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 809
    .local v22, "summary":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v17

    .line 810
    .local v17, "serviceInfo":Landroid/content/pm/ServiceInfo;
    new-instance v5, Landroid/content/ComponentName;

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-direct {v5, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    .local v5, "componentName":Landroid/content/ComponentName;
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 814
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 815
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 816
    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 817
    move-object/from16 v0, v22

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 818
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 819
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 791
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 823
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v5    # "componentName":Landroid/content/ComponentName;
    .end local v11    # "inputMethod":Landroid/view/inputmethod/InputMethodInfo;
    .end local v15    # "j":I
    .end local v17    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v19    # "subtypeCount":I
    .end local v21    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v22    # "summary":Ljava/lang/String;
    :cond_5
    new-instance v23, Landroid/speech/tts/TtsEngines;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    .line 824
    .local v23, "ttsEngines":Landroid/speech/tts/TtsEngines;
    invoke-virtual/range {v23 .. v23}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v24

    if-nez v24, :cond_6

    .line 825
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 826
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "tts_settings"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 827
    const v24, 0x7f0c0a15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 828
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 829
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    :cond_6
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 834
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "pointer_speed"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 835
    const v24, 0x7f0c08b7

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 836
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 837
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 840
    # invokes: Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->haveInputDeviceWithVibrator()Z
    invoke-static {}, Lcom/flyme/deviceoriginalsettings/inputmethod/InputMethodAndLanguageSettings;->access$300()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 841
    new-instance v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;

    .end local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 842
    .restart local v9    # "indexable":Lcom/lenovo/settings/search/provider/SearchIndexableRaw;
    const-string v24, "vibrate_input_devices"

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 843
    const v24, 0x7f0c030f

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 844
    const v24, 0x7f0c0310

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 845
    const v24, 0x7f0c0310

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    .line 846
    move-object/from16 v0, v16

    iput-object v0, v9, Lcom/lenovo/settings/search/provider/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 847
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 850
    :cond_7
    return-object v10
.end method
