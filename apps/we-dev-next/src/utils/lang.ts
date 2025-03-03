export enum Language {
  English = "en",
  "Chinese(Simplified)" = "zh-CN",
  Indonesian = "id",
}

export const LanguageNativeNames: { name: string; locale: Language }[] = [
  {
    name: "English",
    locale: Language.English,
  },
  {
    name: "简体中文",
    locale: Language["Chinese(Simplified)"],
  },
  {
    name: "Bahasa Indonesia",
    locale: Language.Indonesian,
  },
];

export const locales = LanguageNativeNames.map((item) => item.locale);
